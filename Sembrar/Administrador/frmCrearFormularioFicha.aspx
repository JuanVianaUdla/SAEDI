﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="frmCrearFormularioFicha.aspx.cs" Inherits="Sembrar.Administrador.frmCreacionFormularioFicha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 18px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 18px;
            text-align: center;
        }
        .auto-style4 {
            height: 18px;
            text-align: right;
        }
    .auto-style5 {
        height: 208px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;" __designer:mapid="18d">
        <tr __designer:mapid="18e">
            <td class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; font-size: large;" __designer:mapid="18f">
                <asp:ScriptManager ID="scmCuestionario" runat="server">
                </asp:ScriptManager>
                Manejo de Cuestionarios/Fichas</td>
            <td __designer:mapid="190">&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="auto-style7" style="vertical-align: top">
                <hr /></td>
        </tr>
    </table>
    <table style="width:100%;" __designer:mapid="192">
        <tr __designer:mapid="1ab">
            <td __designer:mapid="1ac" colspan="3">
                <table id="tblPrincipales" style="width: 100%;">
                    <tr>
                        <td class="auto-style1" colspan="3">Seleccione un proceso</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="3">
                            <asp:ListBox ID="lstProcesos" runat="server" Width="100%" OnSelectedIndexChanged="lstProcesos_SelectedIndexChanged" DataSourceID="odsProcesos" DataTextField="NOMBREPROCESO" DataValueField="IDPROCESO" AutoPostBack="True"></asp:ListBox>
                            <asp:ObjectDataSource ID="odsProcesos" runat="server" SelectMethod="D_consultarProcesosActivosOrdenados" TypeName="CapaDatos.clsDProceso"></asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">Seleccione un objetivo</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">
                            <asp:ListBox ID="lstObjetivos" runat="server" Width="100%" OnSelectedIndexChanged="lstObjetivos_SelectedIndexChanged" DataSourceID="odsObjetivos" DataTextField="NOMBREOBJETIVO" DataValueField="IDOBJETIVO" AutoPostBack="True"></asp:ListBox>
                            <asp:ObjectDataSource ID="odsObjetivos" runat="server" SelectMethod="D_consultarObjetivosActivosOrdenados" TypeName="CapaDatos.clsDObjetivo"></asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">Seleccione un indicador</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">
                            <asp:ListBox ID="lstIndicadores" runat="server" OnSelectedIndexChanged="lstIndicadores_SelectedIndexChanged" Width="100%" DataSourceID="odsIndicadores" DataTextField="NOMBREINDICADOR" DataValueField="IDINDICADOR" AutoPostBack="True"></asp:ListBox>
                            <asp:ObjectDataSource ID="odsIndicadores" runat="server" SelectMethod="D_consultarIndicadoresActivosOrdenados" TypeName="CapaDatos.clsDIndicador"></asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">Seleccione una pregunta:</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">
                            <asp:ListBox ID="lstPreguntas" runat="server" Width="100%" OnSelectedIndexChanged="lstPreguntas_SelectedIndexChanged" DataSourceID="odsPreguntas" DataTextField="NOMBREPREGUNTA" DataValueField="IDPREGUNTA"></asp:ListBox>
                            <asp:ObjectDataSource ID="odsPreguntas" runat="server" SelectMethod="D_consultarPreguntasActivasOrdenadas" TypeName="CapaDatos.clsDPregunta"></asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Observaciones:</td>
                        <td class="auto-style1" colspan="2">
                            <asp:TextBox ID="txtObservacion" runat="server" Height="78px" TextMode="MultiLine" Width="304px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Ingresar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">
                            <asp:UpdatePanel ID="udpCuestionario" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="auto-style2" colspan="3"><strong>Preguntas insertadas en el cuestionario</strong></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="auto-style5">
                                                <asp:GridView ID="gvCuestionario" runat="server" Width="100%" DataSourceID="odsCuestionario" AutoGenerateColumns="False" DataKeyNames="IDPROCESO,IDOBJETIVO,IDINDICADOR,IDPREGUNTA">
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False">
                                                        <ItemTemplate>
                                                            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" OnClientClick="return confirm('¿Está seguro de eliminar la pregunta de la base de datos (Si pregunta ha sido respondida en un cuestionario, esto no será posible)?');"/>
                                                        </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:CommandField ShowEditButton="True"  ButtonType="Button"/>
                                                        <asp:BoundField DataField="IDPROCESO" HeaderText="IDPROCESO" SortExpression="IDPROCESO" Visible="False" />
                                                        <asp:TemplateField HeaderText="Proceso">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="odsProcesos" DataTextField="NOMBREPROCESO" DataValueField="IDPROCESO" Enabled="False" SelectedValue='<%# Bind("IDPROCESO") %>'>
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="odsProcesos" DataTextField="NOMBREPROCESO" DataValueField="IDPROCESO" Enabled="False" SelectedValue='<%# Bind("IDPROCESO") %>'>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IDOBJETIVO" HeaderText="IDOBJETIVO" SortExpression="IDOBJETIVO" Visible="False" />
                                                        <asp:TemplateField HeaderText="Objetivo">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="odsObjetivos" DataTextField="NOMBREOBJETIVO" DataValueField="IDOBJETIVO" Enabled="False" SelectedValue='<%# Bind("IDOBJETIVO") %>'>
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="odsObjetivos" DataTextField="NOMBREOBJETIVO" DataValueField="IDOBJETIVO" Enabled="False" SelectedValue='<%# Bind("IDOBJETIVO") %>'>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IDINDICADOR" HeaderText="IDINDICADOR" SortExpression="IDINDICADOR" Visible="False" />
                                                        <asp:TemplateField HeaderText="Indicador">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="odsIndicadores" DataTextField="NOMBREINDICADOR" DataValueField="IDINDICADOR" Enabled="False" SelectedValue='<%# Bind("IDINDICADOR") %>'>
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="odsIndicadores" DataTextField="NOMBREINDICADOR" DataValueField="IDINDICADOR" Enabled="False" SelectedValue='<%# Bind("IDINDICADOR") %>'>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IDPREGUNTA" HeaderText="IDPREGUNTA" SortExpression="IDPREGUNTA" Visible="False" />
                                                        <asp:TemplateField HeaderText="Pregunta">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="odsPreguntas" DataTextField="NOMBREPREGUNTA" DataValueField="IDPREGUNTA" Enabled="False" SelectedValue='<%# Bind("IDPREGUNTA") %>'>
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="odsPreguntas" DataTextField="NOMBREPREGUNTA" DataValueField="IDPREGUNTA" Enabled="False" SelectedValue='<%# Bind("IDPREGUNTA") %>'>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="OBSERVACIONESCUESTIONARIO" HeaderText="Observacion" SortExpression="OBSERVACIONESCUESTIONARIO" />
                                                        <asp:CheckBoxField DataField="ESTADOPREGUNTACUESTIONARIO" HeaderText="ESTADOPREGUNTACUESTIONARIO" SortExpression="ESTADOPREGUNTACUESTIONARIO" Visible="False" />
                                                        <asp:TemplateField HeaderText="Estado">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="ddlEstado" runat="server" SelectedValue='<%# Bind("ESTADOPREGUNTACUESTIONARIO") %>'>
                                                                    <asp:ListItem Value="True">Activo</asp:ListItem>
                                                                    <asp:ListItem Value="False">Inactivo</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlEstado" runat="server" Enabled="False" SelectedValue='<%# Bind("ESTADOPREGUNTACUESTIONARIO") %>'>
                                                                    <asp:ListItem Value="True">Activo</asp:ListItem>
                                                                    <asp:ListItem Value="False">Inactivo</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:ObjectDataSource ID="odsCuestionario" runat="server" DataObjectTypeName="CapaDatos.CUESTIONARIO" DeleteMethod="D_eliminarCuestionario" SelectMethod="D_consultarCuestionarioFiltrado" TypeName="CapaDatos.clsDCuestionario" UpdateMethod="D_editarCuestionario" OldValuesParameterFormatString="original_{0}">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="lstProcesos" DefaultValue="" Name="idProceso" PropertyName="SelectedValue" Type="Int32" />
                                                        <asp:ControlParameter ControlID="lstObjetivos" DefaultValue="" Name="idObjetivo" PropertyName="SelectedValue" Type="Int32" />
                                                        <asp:ControlParameter ControlID="lstIndicadores" DefaultValue="" Name="idIndicador" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="lstProcesos" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="lstObjetivos" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="lstIndicadores" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="btnIngresar" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="gvCuestionario" EventName="RowDeleting" />
                                   
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr __designer:mapid="1ab">
            <td __designer:mapid="1ac">&nbsp;</td>
            <td __designer:mapid="1ad" style="text-align: right">&nbsp;</td>
            <td __designer:mapid="1ae">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
