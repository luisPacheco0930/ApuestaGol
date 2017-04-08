<%@ Page Title="" Language="C#" MasterPageFile="~/SiteApuestasAdmin.Master" AutoEventWireup="true" CodeBehind="WbMDeportes.aspx.cs" Inherits="WebApuestasApplication.MantMaestras.WbMDeportes" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .modalBackground {
        background-color:black;
        filter:alpha(opacity =90)!important;
        opacity:0.6 !important;
        z-index:20;
        }
        .modalpopup{
            padding:20px 0px 24px 10px;
            position:relative;
            width:450px;
            height:66px;
            background-color:white;
            border:1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainApuestas" runat="server">
    <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>--%>
    <div id="Titulo">>> MANTENIMIENTO DEPORTE</div>
    <div id="Filtro" >
        <asp:Label ID="lblDescripcion" runat="server" Text="Busqueda por descripción: "></asp:Label>
        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
        <asp:DropDownList ID="dwlEstado" runat="server"></asp:DropDownList>
    </div>
    <div id="opciones">
        <asp:Button ID="btnNuevo" CssClass="" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" CssClass="" runat="server" Text="Editar" />
        <asp:Button ID="btnEliminar" CssClass="" runat="server" Text="Eliminar" />
        <asp:Button ID="btnActInact" CssClass="" runat="server" Text="Activar/Inactivar" />
    </div>
    <div id="Listado">
        <asp:GridView ID="dgwListaDeporte" runat="server"></asp:GridView>
    </div>

    <%--Panel de Mantenimiento--%>
    <div id="panelMantenedor">
    <asp:Panel ID="pnlMantenimientoDeporte" runat="server" CssClass="modalpopup" Style="display:none">
        <asp:Label ID="lblDescripcionMant" runat="server" Text="Descripción"></asp:Label>
        <asp:TextBox ID="txtDescripcionMant" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="(*)"></asp:Label>
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </asp:Panel>
    <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnNuevo" PopupControlID="pnlMantenimientoDeporte" CancelControlID="btnCancelar"></asp:ModalPopupExtender>--%>
    </div>
</asp:Content>
