﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaDatos;

namespace Sembrar.Administrador
{
    public partial class CrearReunion : System.Web.UI.Page
    {
        clsDatosReunion crearReunion = new clsDatosReunion();
        clsDPeriodoPrograma objDPeriodoPrograma = new clsDPeriodoPrograma();
        clsDOrientador objDOrientador = new clsDOrientador();
        clsDProceso objDProceso = new clsDProceso();
        clsDLineaAccion objDLinea = new clsDLineaAccion();
        clsDTipoAsistente objTipoAsistente = new clsDTipoAsistente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    cargarLineaAccion();
                    cargarProceso(int.Parse(ddlLineaAccion.SelectedValue));
                    cargarOrientadores(int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                    cargarPeriodo(int.Parse(ddlOrientador.SelectedValue), int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                }
                catch
                {

                }
                

                cargarTipoAsistente();
            }



        }

        protected void ddlOrientador_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cargarPeriodo(int.Parse(ddlOrientador.SelectedValue), int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
            }
            catch
            {

            }
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if ((DateTime.Parse(txtFecha.Text).AddDays(1)) >= DateTime.Now)
            {
                try
                {
                    bool resultado = crearReunion.ingresaDatosReunion(int.Parse(ddlLineaAccion.SelectedValue),int.Parse(ddlOrientador.SelectedValue),int.Parse(ddlProceso.SelectedValue),int.Parse(ddlPeriodo.SelectedValue),int.Parse(ddlTipoAsistentes.SelectedValue),txtTema.Text,DateTime.Parse(txtFecha.Text),TimeSpan.Parse(txtHora.Text),TxtObservacion.Text);

                    if (resultado)
                    {
                        string script = "alert(\"Datos ingresados con éxito!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);

                    }
                    else
                    {
                        string script = "alert(\"Porfavor verifica, algo ha salido mal!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                    }
                }
                catch (Exception)
                {
                    string script = "alert(\"Porfavor verifica, algo ha salido mal!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }
            else
            {
                Response.Write("<script>window.alert('La fecha de la reunion no puede ser anterior a la fecha actual');</script>");
            }
        }


        private void cargarOrientadores(int idProceso, int idLinea)
        {
            try
            {
                ddlOrientador.DataSource = objDOrientador.D_consultarOrientadoresPorProcesoyLinea(idProceso, idLinea);
                ddlOrientador.DataValueField = "IDORIENTADOR";
                ddlOrientador.DataTextField = "NOMBREORIENTADOR";
                ddlOrientador.DataBind();
            }
            catch {

            }
            
        }
        private void cargarTipoAsistente()
        {
            try
            {
                ddlTipoAsistentes.DataSource = objTipoAsistente.D_consultarTipoAsistentes();
                ddlTipoAsistentes.DataValueField = "IDTIPO";
                ddlTipoAsistentes.DataTextField = "NOMBRE";
                ddlTipoAsistentes.DataBind();
            }
            catch
            {

            }

        }
        private void cargarLineaAccion() {
            try
            {
                ddlLineaAccion.DataSource = objDLinea.D_consutarLineasDeAccionAsociadas();
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
                ddlProceso.DataSource = objDProceso.D_consutarProcesosActivosAsociados(idLineaAccion);
                ddlProceso.DataValueField = "IDPROCESO";
                ddlProceso.DataTextField = "NOMBREPROCESO";
                ddlProceso.DataBind();
            }
            catch { }
            
        }
        private void cargarPeriodo(int idOrientador, int idProceso, int idLinea) {
            try
            {
                ddlPeriodo.DataSource = objDPeriodoPrograma.D_consutarPeriodosActivosAsociadosCompleto(idOrientador, idProceso, idLinea);
                ddlPeriodo.DataValueField = "IDPERIODO";
                ddlPeriodo.DataTextField = "NOMBREPERIODO";
                ddlPeriodo.DataBind();
            }
            catch { }

            
        }

        protected void txtProceso_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlLineaAccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cargarProceso(int.Parse(ddlLineaAccion.SelectedValue));
                cargarOrientadores(int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                cargarPeriodo(int.Parse(ddlOrientador.SelectedValue), int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
            }
            catch
            {

            }
            
        }

        protected void ddlProceso_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cargarOrientadores(int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
                cargarPeriodo(int.Parse(ddlOrientador.SelectedValue), int.Parse(ddlProceso.SelectedValue), int.Parse(ddlLineaAccion.SelectedValue));
            }
            catch
            {

            }
            
        }
    }
}