﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;
namespace Sembrar.Administrador
{
    public partial class AsignarFamiliaIndividuos : System.Web.UI.Page
    {

        public List<clsasignarfamilia> nuevaLista
        {
            get
            {
                if (HttpContext.Current.Session["nuevaLista"] == null)
                {
                    HttpContext.Current.Session["nuevaLista"] = new List<clsasignarfamilia>();
                }
                return HttpContext.Current.Session["nuevaLista"] as List<clsasignarfamilia>;
            }
            set
            {
                HttpContext.Current.Session["nuevaLista"] = value;
            }

        }

        clsDatosAsignarFamilia objDAF = new clsDatosAsignarFamilia();
        clsNFamilia objFamilia = new clsNFamilia();
        clsParentesco objParentezco = new clsParentesco();
        clsPersona objPersona = new clsPersona();
        clsDatosPersona objDPersona = new clsDatosPersona();
        clsDParentezco objDParentezco = new clsDParentezco();
        clsDFamilia objDFamilia = new clsDFamilia();
        clsDatosNinio objDNinio = new clsDatosNinio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ddlFamilia.DataSource = objDFamilia.consultaFamilia();
                ddlFamilia.DataTextField = "NOMBREFAMILIA";
                ddlFamilia.DataValueField = "IDFAMILIA";
                ddlFamilia.DataBind();

                int familia;
                int.TryParse(ddlFamilia.SelectedValue.ToString(), out familia);
                objFamilia = new clsNFamilia();
                objFamilia = objDFamilia.consultaInfoFamilia(familia);
                txtObservacion.Text = objFamilia.OBSERVACIONFAMILIA;
                lblMiembros.Text = objFamilia.MIEMBROSFAMILIA.ToString();
                nuevaLista = objDAF.ConsultaMiembrosFamilia(objFamilia);
                gvFamilia.DataSource = nuevaLista.Select(l => new { IDPERSONA = l.CodigoPersona, NOMBRE = l.PrimerNombre + " " + l.SegundoNombre + " " + l.PrimerApellido + " " + l.SegundoApellido, PARENTEZCO = l.Parentezco, FAMILIA = l.NombreFamilia });
                gvFamilia.AutoGenerateDeleteButton = true;
                gvFamilia.DataKeyNames = new string[] { "IDPERSONA" };
                gvFamilia.DataBind();

                ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year>=DateTime.Now.Year-13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
                ddlRepresentante.DataTextField = "NOMBRE";
                ddlRepresentante.DataValueField = "ID";
                ddlRepresentante.DataBind();
                cargarRepresentante();

                cargarIndividuoSinFamilia();

            }
        }

        private void cargarIndividuoSinFamilia()
        {
            ddlIndividuos.DataSource = objDPersona.consultarIndividuosSinFamilia().Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
            ddlIndividuos.DataTextField = "NOMBRE";
            ddlIndividuos.DataValueField = "ID";
            ddlIndividuos.DataBind();
        }

        protected void txtBusqueda_TextChanged(object sender, EventArgs e)
        {
            if (txtBusqueda.Text.CompareTo("") == 0)
            {
                ddlIndividuos.DataSource = objDPersona.consultarIndividuosSinFamilia().Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
                ddlIndividuos.DataTextField = "NOMBRE";
                ddlIndividuos.DataValueField = "ID";
                ddlIndividuos.DataBind();
            }
            else
            {
                ddlIndividuos.DataSource = objDPersona.consultarIndividuos().Where(p => (p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA).ToUpper().Contains(txtBusqueda.Text.ToUpper())).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
                ddlIndividuos.DataTextField = "NOMBRE";
                ddlIndividuos.DataValueField = "ID";
                ddlIndividuos.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            clsasignarfamilia nuevo = new clsasignarfamilia();
            
            int codigoPer,codigoPar,codigoFam;
            int.TryParse(ddlIndividuos.SelectedValue.ToString(), out codigoPer);
            int.TryParse(ddlFamilia.SelectedValue.ToString(), out codigoFam);
            int.TryParse(ddlParentezco.SelectedValue.ToString(), out codigoPar);
            nuevo.CodigoPersona = codigoPer;
            bool existe = nuevaLista.Any(i => i.CodigoPersona == codigoPer);
            int padres = nuevaLista.Where(i => i.CodigoParentezco==1).Count();
            int madres = nuevaLista.Where(i => i.CodigoParentezco == 2).Count();

            bool esNinio = objDNinio.consultarNinio().Any(p => p.IDPERSONA == codigoPer);

            if (!existe)
            {
                clsasignarfamilia nuevaRelacion = new clsasignarfamilia();
                nuevaRelacion.CodigoPersona = codigoPer;
                nuevaRelacion.CodigoParentezco = codigoPar;
                nuevaRelacion.CodigoFamilia = codigoFam;
                nuevaRelacion = objDAF.ConsultaFamilias(nuevaRelacion);
                nuevaLista.Add(nuevaRelacion);

                ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year <= DateTime.Now.Year - 13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
                ddlRepresentante.DataTextField = "NOMBRE";
                ddlRepresentante.DataValueField = "ID";
                ddlRepresentante.DataBind();
                cargarRepresentante();




                gvFamilia.DataSource = nuevaLista.Select(l => new { IDPERSONA = l.CodigoPersona, NOMBRE = l.PrimerNombre + " " + l.SegundoNombre + " " + l.PrimerApellido + " " + l.SegundoApellido, PARENTEZCO = l.Parentezco, FAMILIA = l.NombreFamilia });
                gvFamilia.DataKeyNames = new string[] { "IDPERSONA" };
                gvFamilia.DataBind();
            }
            else
            {
                Response.Write("<script>window.alert('No se puede agregar un individuo dos veces a la misma familia');</script>");
            }

            cargarIndividuoSinFamilia();
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            clsRepresentante objRepresentante = new clsRepresentante();
            int persona;
            int.TryParse(ddlRepresentante.SelectedValue.ToString(), out persona);
            objRepresentante.IDPERSONA = persona;
            bool esNinio = objDNinio.consultarNinio().Any(p => p.IDPERSONA == persona);
            int familia;
            int.TryParse(ddlFamilia.SelectedValue.ToString(), out familia);
            objFamilia = new clsNFamilia();
            objFamilia = objDFamilia.consultaInfoFamilia(familia);
            objFamilia.OBSERVACIONFAMILIA = txtObservacion.Text;
            objFamilia.MIEMBROSFAMILIA = calcularMiembros() + nuevaLista.Count();
            bool existeFam = objDAF.ConsultaFamilias().Any(ppf=> ppf.IDFAMILIA ==familia);
            bool existenMiembros = nuevaLista.Any(p => p.CodigoPersona != 0);
            if (existenMiembros)
            {
                if (!existeFam)
                {
                    if (!esNinio)
                    {
                        if (objDAF.ingresarMiembrosFamilia(nuevaLista, objRepresentante))
                        {
                            nuevaLista.Clear();
                            ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year <= DateTime.Now.Year - 13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
                            ddlRepresentante.DataTextField = "NOMBRE";
                            ddlRepresentante.DataValueField = "ID";
                            ddlRepresentante.DataBind();
                            cargarRepresentante();

                            nuevaLista.Clear();
                            gvFamilia.DataSource = nuevaLista;
                            gvFamilia.DataKeyNames = new string[] { "IDPERSONA" };
                            gvFamilia.DataBind();
                            if (objDFamilia.modificarFamilia(objFamilia))
                            {
                                Response.Write(@"<script>alert('Resultado Ingreso: CORRECTO');setTimeout(function(){window.location = '" + Request.RawUrl + @"';}, 10);</script>");
                            }
                            
                        }
                        else
                        {
                            Response.Write("<script>window.alert('Resultado Ingreso: INCORRECTO');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>window.alert('No se puede ingresar un ninio como Representante');</script>");
                    }
                }
                else
                {
                    if (!esNinio)
                    {
                        if (objDAF.modificarMiembrosFamilia(nuevaLista, objRepresentante))
                        {
                            nuevaLista.Clear();
                            ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year <= DateTime.Now.Year - 13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
                            ddlRepresentante.DataTextField = "NOMBRE";
                            ddlRepresentante.DataValueField = "ID";
                            ddlRepresentante.DataBind();
                            cargarRepresentante();

                            nuevaLista.Clear();
                            gvFamilia.DataSource = nuevaLista;
                            gvFamilia.DataKeyNames = new string[] { "IDPERSONA" };
                            gvFamilia.DataBind();
                            if (objDFamilia.modificarFamilia(objFamilia))
                            {
                                Response.Write(@"<script>alert('Resultado Actualización: CORRECTO');setTimeout(function(){window.location = '" + Request.RawUrl + @"';}, 10);</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>window.alert('Resultado Actualización: INCORRECTO');</script>");
                        }
                    }
                
                    else
                    {
                    Response.Write("<script>window.alert('No se puede ingresar un ninio como Representante');</script>");
                    }
    

                }
            }else
            {
                Response.Write("<script>window.alert('INGRESE MIEMBROS A LA FAMILIA PRIMERO');</script>");
            }
            cargarIndividuoSinFamilia();
        }

        protected void ddlFamilia_SelectedIndexChanged(object sender, EventArgs e)
        {
            nuevaLista.Clear();
            ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year <= DateTime.Now.Year - 13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
            ddlRepresentante.DataTextField = "NOMBRE";
            ddlRepresentante.DataValueField = "ID";
            ddlRepresentante.DataBind();
            cargarRepresentante();

            nuevaLista.Clear();
            int familia;
            int.TryParse(ddlFamilia.SelectedValue.ToString(), out familia);  
            objFamilia = new clsNFamilia();
            objFamilia = objDFamilia.consultaInfoFamilia(familia);
            txtObservacion.Text = objFamilia.OBSERVACIONFAMILIA;
            lblMiembros.Text = objFamilia.MIEMBROSFAMILIA.ToString();
            nuevaLista = objDAF.ConsultaMiembrosFamilia(objFamilia);
            gvFamilia.DataSource = nuevaLista.Select(l => new { IDPERSONA = l.CodigoPersona, NOMBRE = l.PrimerNombre + " " + l.SegundoNombre + " " + l.PrimerApellido + " " + l.SegundoApellido, PARENTEZCO = l.Parentezco, FAMILIA = l.NombreFamilia });
            gvFamilia.DataBind();

            ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year <= DateTime.Now.Year - 13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
            ddlRepresentante.DataTextField = "NOMBRE";
            ddlRepresentante.DataValueField = "ID";
            ddlRepresentante.DataBind();
            cargarRepresentante();

        }

        protected void gvFamilia_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int idPersona;
                int.TryParse(gvFamilia.DataKeys[e.RowIndex]["IDPERSONA"].ToString(), out idPersona);

                clsasignarfamilia eliminado = nuevaLista.Where(p => p.CodigoPersona == idPersona).First();
                nuevaLista.Remove(eliminado);                
            }
            catch
            {
                MsgBox("Evite refrescar la página al eliminar individuos", this.Page, this);                
            }
            ddlRepresentante.DataSource = objDPersona.consultarIndividuos(nuevaLista).Where(p => p.FECHANACIMIENTOPERSONA.Value.Year <= DateTime.Now.Year - 13).Select(p => new { ID = p.IDPERSONA, NOMBRE = p.PRIMERNOMBREPERSONA + " " + p.SEGUNDONOMBREPERSONA + " " + p.PRIMERAPELLIDOPERSONA + " " + p.SEGUNDOAPELLIDOPERSONA }).OrderBy(a => a.NOMBRE).ToList();
            ddlRepresentante.DataTextField = "NOMBRE";
            ddlRepresentante.DataValueField = "ID";
            ddlRepresentante.DataBind();
            cargarRepresentante();

            gvFamilia.DataSource = nuevaLista.Select(l => new { IDPERSONA = l.CodigoPersona, NOMBRE = l.PrimerNombre + " " + l.SegundoNombre + " " + l.PrimerApellido + " " + l.SegundoApellido, PARENTEZCO = l.Parentezco, FAMILIA = l.NombreFamilia });
            gvFamilia.DataBind();

        }

        protected void gvFamilia_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;
        }

        protected void ddlIndividuos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private int calcularMiembros()
        {
            int miembros=0;

            string[] lineas = txtObservacion.Text.Split('\n');

            foreach (string linea in lineas)
            {
                int temp;
                if(int.TryParse(linea.Split(' ').First(), out temp))
                {
                    miembros += temp;
                }
            }
            return miembros;
        }

        private void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        private void cargarRepresentante()
        {
            try
            {
                ddlRepresentante.ClearSelection();
                string item = objDFamilia.consultaRepresentante(int.Parse(ddlFamilia.SelectedValue));
                ddlRepresentante.SelectedValue = item;
            }
            catch
            {

            }
        } 
    }
}