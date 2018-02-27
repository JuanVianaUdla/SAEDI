﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace Sembrar.Orientador
{
    public partial class CuestionarioFichas : System.Web.UI.Page
    {
        clsDCuestionario objDcuestionario = new clsDCuestionario();
        clsNSolucionCuestionario nuevasolucion = new clsNSolucionCuestionario();
        clsDSolucionCuestionario objDSolucionCuestionario = new clsDSolucionCuestionario();
        int idProceso, idObjetivo, idIndicador, idPeriodo, idPersona;
        Table Cuestionario;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                generarCuestionario();
            }
        }


        private void generarCuestionario()
        {

            //pnlCuestionario.Controls.Clear();

            //Elentos cuestionario
            Table tablaCuestionario = new Table();
            TableRow filatabla;
            TableCell celdatabla;
            TextBox textboxRespuesta;
            RadioButtonList listaRespuestas;

            //Atributos cuestionario
            tablaCuestionario.Width = Unit.Percentage(100);
            tablaCuestionario.ID = "tblCuestionario";

            List<CapaDatos.OBJETIVO> consultaObjetivos = objDcuestionario.D_consultaObjectivosCuestionarioAResolver(int.Parse(ddlProceso.SelectedValue));

            int cont = 1;

            foreach (CapaDatos.OBJETIVO obj in consultaObjetivos)
            {

                //Cabecera
                filatabla = new TableRow();
                celdatabla = new TableCell();
                celdatabla.Width = Unit.Percentage(100);
                if (obj.NOMBREOBJETIVO != "No Aplica" && obj.NOMBREOBJETIVO != "No aplica")
                {
                    celdatabla.Text = obj.NOMBREOBJETIVO;
                }
                else
                {
                    celdatabla.Text = "\n";
                    celdatabla.Height = 25;
                }
                celdatabla.HorizontalAlign = HorizontalAlign.Center;
                celdatabla.ID = "idObjetivo" + obj.IDOBJETIVO + "-" + cont;
                celdatabla.ClientIDMode = ClientIDMode.Static;
                filatabla.Cells.Add(celdatabla);
                tablaCuestionario.Rows.Add(filatabla);

                List<CapaDatos.INDICADOR> consultaIndicadores = objDcuestionario.D_consultaIndicadoresCuestionarioAResolver(int.Parse(ddlProceso.SelectedValue), obj.IDOBJETIVO);

                foreach (CapaDatos.INDICADOR ind in consultaIndicadores)
                {
                    //Cabecera
                    filatabla = new TableRow();
                    celdatabla = new TableCell();
                    celdatabla.Width = Unit.Percentage(100);
                    if (ind.NOMBREINDICADOR != "No Aplica" && ind.NOMBREINDICADOR != "No aplica")
                    {
                        celdatabla.Text = ind.NOMBREINDICADOR;
                    }
                    else
                    {
                        celdatabla.Text = "\n";
                        celdatabla.Height = 25;
                    }
                    celdatabla.HorizontalAlign = HorizontalAlign.Center;
                    celdatabla.ID = "idIndicador" + ind.IDINDICADOR + "-" + cont;
                    celdatabla.ClientIDMode = ClientIDMode.Static;
                    filatabla.Cells.Add(celdatabla);
                    tablaCuestionario.Rows.Add(filatabla);

                    List<CapaDatos.PREGUNTA> consultaPreguntas = objDcuestionario.D_consultaPreguntasCuestionarioAResolver(int.Parse(ddlProceso.SelectedValue), obj.IDOBJETIVO, ind.IDINDICADOR);

                    foreach (CapaDatos.PREGUNTA pre in consultaPreguntas)
                    {
                        //Nombre pregunta
                        filatabla = new TableRow();
                        celdatabla = new TableCell();
                        celdatabla.Width = Unit.Percentage(100);
                        celdatabla.Text = pre.NOMBREPREGUNTA;
                        celdatabla.ID = "id" + pre.IDPREGUNTA.ToString() + "-" + cont;
                        celdatabla.ClientIDMode = ClientIDMode.Static;
                        celdatabla.HorizontalAlign = HorizontalAlign.Left;
                        filatabla.Cells.Add(celdatabla);
                        tablaCuestionario.Rows.Add(filatabla);

                        //Controles respuesta
                        celdatabla = new TableCell();
                        filatabla = new TableRow();
                        celdatabla.Width = Unit.Percentage(100);


                        //Pregunta cerrada
                        if (pre.IDTIPOPREGUNTA == 1)
                        {
                            List<CapaDatos.POSIBLERESPUESTA> consultaRespuestas = objDcuestionario.D_consultaRespuestasCuestionarioAResolver(pre.IDPREGUNTA);

                            //Lista de radio buttons
                            listaRespuestas = new RadioButtonList();
                            listaRespuestas.ID = "rblPregunta" + pre.IDPREGUNTA + "-" + cont;
                            listaRespuestas.ClientIDMode = ClientIDMode.Static;
                            listaRespuestas.RepeatDirection = RepeatDirection.Horizontal;
                            listaRespuestas.CellSpacing = 10;
                            foreach (CapaDatos.POSIBLERESPUESTA resp in consultaRespuestas)
                            {
                                listaRespuestas.Items.Add(new ListItem(resp.TEXTOPOSIBLERESPUESTA, resp.IDPOSIBLERESPUESTA.ToString()));
                            }
                            celdatabla.Controls.Add(listaRespuestas);

                        }
                        //Preguta Abierta
                        else if (pre.IDTIPOPREGUNTA == 2)
                        {
                            textboxRespuesta = new TextBox();
                            textboxRespuesta.ID = "txtPregunta" + pre.IDPREGUNTA + "-" + cont;
                            textboxRespuesta.ClientIDMode = ClientIDMode.Static;
                            celdatabla.Controls.Add(textboxRespuesta);
                            celdatabla.HorizontalAlign = HorizontalAlign.Left;
                        }
                        filatabla.Cells.Add(celdatabla);
                        tablaCuestionario.Rows.Add(filatabla);
                        cont++;
                    }

                }

            }
            tablaCuestionario.ClientIDMode = ClientIDMode.Static;
            pnlCuestionario.Controls.Clear();
            this.pnlCuestionario.Controls.Add(tablaCuestionario);
        }

        private void solucionar2()
        {
            Cuestionario = (Table)pnlCuestionario.Controls[0];

            foreach (TableRow filaTabla in Cuestionario.Rows)
            {
                foreach (TableCell celdaTabla in filaTabla.Cells)
                {
                    if (celdaTabla.ID != null && celdaTabla.ID.StartsWith("idObjetivo"))
                    {
                        string id = celdaTabla.ID.Remove(0, 10);
                        idObjetivo = int.Parse(id.Substring(0, id.LastIndexOf("-")));
                    }
                    else if (celdaTabla.ID != null && celdaTabla.ID.StartsWith("idIndicador"))
                    {
                        string id = celdaTabla.ID.Remove(0, 11);
                        idIndicador = int.Parse(id.Substring(0, id.LastIndexOf("-")));
                    }
                    else
                    {
                        foreach (Control controlTabla in celdaTabla.Controls)
                        {
                            if (controlTabla is TextBox && controlTabla.ID.StartsWith("txtPregunta"))
                            {
                                TextBox tempTextBox = (TextBox)controlTabla;
                                string id = tempTextBox.ID.Remove(0, 11);
                                guardarSolucion(int.Parse(id.Substring(0, id.LastIndexOf("-"))), tempTextBox.Text);
                            }
                            else if (controlTabla is RadioButtonList && controlTabla.ID.StartsWith("rblPregunta"))
                            {
                                RadioButtonList tempRadioButtonList = (RadioButtonList)controlTabla;
                                string id = tempRadioButtonList.ID.Remove(0, 11);
                                guardarSolucion(int.Parse(id.Substring(0, id.LastIndexOf("-"))), tempRadioButtonList.Items.FindByValue(tempRadioButtonList.SelectedValue).Text);
                            }
                        }
                    }

                }

            }
        }

        protected void ddlPeriodo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlLineaAccion_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ddlProceso_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ddlOrientador_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            btnIngresar.Visible = true;
        }

        protected void odsIndividuos_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            idProceso = int.Parse(ddlProceso.SelectedValue);
            idPeriodo = int.Parse(ddlPeriodo.SelectedValue);
            if (lstIndividuos.SelectedIndex < 0)
            {
                Response.Write("<script>window.alert('Seleccione una persona');</script>");
                return;
            }
            idPersona = int.Parse(lstIndividuos.SelectedValue);

            if (validarRadioButtons())
            {
                solucionar2();
                Response.Write(@" <script>alert('Ingreso Correcto');setTimeout(function(){window.location = '" + Request.RawUrl + @"';}, 10);</script>");
            }
            else
            {
                Response.Write("<script>window.alert('Responda todas las preguntas cerradas para guardar la solucion del cuestionario');</script>");
            }
        }

        private void guardarSolucion(int idPregunta, string respuesta)
        {
            nuevasolucion.IDPROCESO = idProceso;
            nuevasolucion.IDOBJETIVO = idObjetivo;
            nuevasolucion.IDINDICADOR = idIndicador;
            nuevasolucion.IDPREGUNTA = idPregunta;
            nuevasolucion.IDPERSONA = idPersona;
            nuevasolucion.IDPERIODO = idPeriodo;
            nuevasolucion.FECHASOLUCIONCUESTIONARIO = DateTime.Now;
            nuevasolucion.TEXTOSOLUCIONCUESTIONARIO = respuesta;
            objDSolucionCuestionario.D_guardarRespuestaCuestionario(nuevasolucion);
        }

        private bool validarRadioButtons()
        {
            Cuestionario = (Table)pnlCuestionario.Controls[0];

            foreach (TableRow filaTabla in Cuestionario.Rows)
            {
                foreach (TableCell celdaTabla in filaTabla.Cells)
                {
                    foreach (Control controlTabla in celdaTabla.Controls)
                    {
                        if (controlTabla is RadioButtonList && controlTabla.ID.StartsWith("rblPregunta"))
                        {
                            RadioButtonList tempRadioButtonList = (RadioButtonList)controlTabla;

                            if (tempRadioButtonList.SelectedIndex < 0)
                            {
                                return false;
                            }
                        }
                    }
                }
            }
            return true;
        }
        
    }

    
}
