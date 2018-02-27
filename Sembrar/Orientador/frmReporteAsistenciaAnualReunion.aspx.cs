﻿using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
namespace Sembrar.Orientador
{
    public partial class frmReporteAsistenciaAnualReunion : System.Web.UI.Page
    {
        clsDProceso objProceso = new clsDProceso();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            if (!IsPostBack)
            {
                cargarProceso();

                for (int i = 2016; i <= int.Parse(DateTime.Now.ToString("yyyy")); i++)
                {
                    ListItem li = new ListItem();
                    li.Text = i.ToString() + " / " + (i + 1).ToString();
                    li.Value = i.ToString();
                    DropDownList1.Items.Add(li);
                }
            }
            ReportDocument crystalrpt = new ReportDocument();
            crystalrpt.Load(Server.MapPath(@"~/Reportes/ReporteAsistenciaAnualReunionesOrientador.rpt"));
            crystalrpt.Refresh();
            crystalrpt.SetParameterValue("@IdOrientador", idOrientador);
            crystalrpt.SetParameterValue("@Anio", DropDownList1.SelectedValue);
            crystalrpt.SetParameterValue("@IdProceso", ddlProceso.SelectedValue);
            CrystalReportViewer1.ReportSource = crystalrpt;
            CrystalReportViewer1.DataBind();
        }
        private void cargarProceso()
        {
            int idOrientador = (int)Session["id"];
            ddlProceso.DataSource = objProceso.D_consultarProcesoPorOrientador(idOrientador);
            ddlProceso.DataValueField = "IdProceso";
            ddlProceso.DataTextField = "Nombre";
            ddlProceso.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            ReportDocument crystalrpt = new ReportDocument();
            crystalrpt.Load(Server.MapPath(@"~/Reportes/ReporteAsistenciaAnualReunionesOrientador.rpt"));
            crystalrpt.Refresh();
            crystalrpt.SetParameterValue("@IdOrientador", idOrientador);
            crystalrpt.SetParameterValue("@Anio", DropDownList1.SelectedValue);
            crystalrpt.SetParameterValue("@IdProceso", ddlProceso.SelectedValue);
            CrystalReportViewer1.ReportSource = crystalrpt;
            CrystalReportViewer1.DataBind();
        }

        protected void ddlProceso_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idOrientador = (int)Session["id"];
            ReportDocument crystalrpt = new ReportDocument();
            crystalrpt.Load(Server.MapPath(@"~/Reportes/ReporteAsistenciaAnualReunionesOrientador.rpt"));
            crystalrpt.Refresh();
            crystalrpt.SetParameterValue("@IdOrientador", idOrientador);
            crystalrpt.SetParameterValue("@Anio", DropDownList1.SelectedValue);
            crystalrpt.SetParameterValue("@IdProceso", ddlProceso.SelectedValue);
            CrystalReportViewer1.ReportSource = crystalrpt;
            CrystalReportViewer1.DataBind();
        }
    }
}