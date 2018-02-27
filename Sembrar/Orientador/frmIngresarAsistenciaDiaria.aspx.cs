﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaDatos;
namespace Sembrar.Orientador
{
    public partial class CrearAsistenciaDiaria : System.Web.UI.Page
    {
        clsDatosReunion crearReunion = new clsDatosReunion();
        clsDatosAsistencia objDatosAsistencia = new clsDatosAsistencia();
        clsDPeriodoPrograma objDPeriodoPrograma = new clsDPeriodoPrograma();
        clsDOrientador objDOrientador = new clsDOrientador();
        clsDProceso objDProceso = new clsDProceso();
        clsDFamilia objFamilia = new clsDFamilia();
        clsDLineaAccion objDLinea = new clsDLineaAccion();
        clsDTipoAsistente objTipoAsistente = new clsDTipoAsistente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 7; i >= 0; i--)
                {
                    ListItem li = new ListItem();

                    li.Text = DateTime.Today.AddDays(-i).ToString("yyyy/MM/dd");
                    li.Value = DateTime.Today.AddDays(-i).ToString("yyyy/MM/dd");
                    ddlFecha.Items.Add(li);
                }
            }
            if (!IsPostBack)
            {
                int idOrientador = (int)Session["id"];
                try
                {
                    cargarLineaAccion();
                    cargarProceso(int.Parse(ddlLineaAccion.SelectedValue));
                    cargarPeriodo(idOrientador, int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                    
                }
                catch {

                }
            }
        }

        protected void ddlLineaAccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            try {
                cargarProceso(int.Parse(ddlLineaAccion.SelectedValue));
                cargarPeriodo(idOrientador, int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                grvJovenes.DataSource = null;
                grvJovenes.DataBind();
            }
            catch { }
            
        }

        protected void ddlProceso_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            try
            {
                cargarPeriodo(idOrientador, int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                grvJovenes.DataSource = null;
                grvJovenes.DataBind();
            }
            catch { }
            
        }
        
        private void cargarLineaAccion()
        {
            try
            {
                int idOrientador = (int)Session["id"];
                ddlLineaAccion.DataSource = objDLinea.D_consutarLineasDeAccionAsociadasConOrientador(idOrientador);
                ddlLineaAccion.DataValueField = "IDLINEAACCION";
                ddlLineaAccion.DataTextField = "NOMBRELINEAACCION";
                ddlLineaAccion.DataBind();
            }
            catch { }

        }
        private void cargarProceso(int idLineaAccion)
        {
            try
            {
                int idOrientador = (int)Session["id"];
                ddlProceso.DataSource = objDProceso.D_consutarProcesosActivosAsociadosConOrientador(idLineaAccion, idOrientador);
                ddlProceso.DataValueField = "IDPROCESO";
                ddlProceso.DataTextField = "NOMBREPROCESO";
                ddlProceso.DataBind();
            }
            catch { }

        }
        private void cargarPeriodo(int idOrientador, int idProceso, int idLinea)
        {
            try
            {
                ddlPeriodo.DataSource = objDPeriodoPrograma.D_consutarPeriodosActivosAsociadosCompleto(idOrientador, idProceso, idLinea);
                ddlPeriodo.DataValueField = "IDPERIODO";
                ddlPeriodo.DataTextField = "NOMBREPERIODO";
                ddlPeriodo.DataBind();
            }
            catch { }


        }

        protected void ddlPeriodo_SelectedIndexChanged(object sender, EventArgs e)
        {
            grvJovenes.DataSource = null;
            grvJovenes.DataBind();
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            if (objDatosAsistencia.consultarIngresoDiario(int.Parse(ddlLineaAccion.SelectedValue), idOrientador, int.Parse(ddlProceso.SelectedValue), int.Parse(ddlPeriodo.SelectedValue), DateTime.Parse(ddlFecha.SelectedValue.ToString())))
            {
                foreach (GridViewRow gvr in grvJovenes.Rows)
                {
                    DropDownList ddlAsisencia = (DropDownList)(gvr.FindControl("ddlAsistencia"));
                    if (objDatosAsistencia.IngresoDatosAsistenciaDiaria(int.Parse(ddlLineaAccion.SelectedValue), idOrientador, int.Parse(ddlProceso.SelectedValue), int.Parse(ddlPeriodo.SelectedValue), int.Parse(ddlAsisencia.SelectedValue), int.Parse(gvr.Cells[4].Text), DateTime.Parse(ddlFecha.SelectedValue.ToString())))
                    {
                        string script = "alert(\"Datos ingresados con éxito!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                    }
                    else
                    {
                        string script = "alert(\"Datos ingresados sin éxito!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);

                    }

                }
            }
            else {
                string script = "alert(\"Ya se ha ingresado la asistencia hoy\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "DoPostBack", "__doPostBack(sender, e)", true);
            cargarLineaAccion();
            cargarProceso(int.Parse(ddlLineaAccion.SelectedValue));
            cargarPeriodo(idOrientador, int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
            grvJovenes.DataSource = null;
            grvJovenes.DataBind();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            try
            {
                grvJovenes.DataSource = objFamilia.consultaPersonasAsistentesDiarios(int.Parse(ddlLineaAccion.SelectedValue.ToString()), int.Parse(ddlProceso.SelectedValue), idOrientador, int.Parse(ddlPeriodo.SelectedValue));
                grvJovenes.DataBind();
            }
            catch
            {

            }
        }

    }
}