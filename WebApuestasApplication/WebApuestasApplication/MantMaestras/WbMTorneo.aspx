<%@ Page Title="" Language="C#" MasterPageFile="~/SiteApuestasAdmin.Master" AutoEventWireup="true" CodeBehind="WbMTorneo.aspx.cs" Inherits="WebApuestasApplication.MantMaestras.WbMTorneo" %>
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
    <div id="Titulo">>> MANTENIMIENTO TORNEO</div>
    <div id="Filtro" >
        <asp:Label ID="lblBDescripcionT" runat="server" Text="Busqueda por descripción: "></asp:Label>
        <asp:TextBox ID="txtBDescripcionT" runat="server"></asp:TextBox>
        <asp:Label ID="lblBPaisT" runat="server" Text="Pais:"></asp:Label>
        <asp:DropDownList ID="dwlBPaisT" runat="server"></asp:DropDownList>
        <asp:Label ID="lblBDeporteT" runat="server" Text="Deporte:"></asp:Label>
        <asp:DropDownList ID="dwlBDeporteT" runat="server"></asp:DropDownList>
        <asp:Label ID="lblBEstadoT" runat="server" Text="Estado:"></asp:Label>
        <asp:DropDownList ID="dwlBEstadoT" runat="server"></asp:DropDownList>

    </div>
    <div id="opciones">
        <asp:Button ID="btnNuevo" CssClass="" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" CssClass="" runat="server" Text="Editar" />
        <asp:Button ID="btnEliminar" CssClass="" runat="server" Text="Eliminar" />
        <asp:Button ID="btnActInact" CssClass="" runat="server" Text="Activar/Inactivar" />
    </div>
    <div id="Listado">
        <asp:GridView ID="dgwListaTorneo" runat="server"></asp:GridView>
    </div>

    <%--Panel de Mantenimiento--%>
    <div id="panelMantenedorTorneo">
    <asp:Panel ID="pnlMantenimientoTorneo" runat="server" CssClass="modalpopup" Style="display:none">
        <asp:Label ID="lblDescripcionT" runat="server" Text="Descripción Torneo: "></asp:Label>
        <asp:TextBox ID="txtDescripcionT" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="lblPaisT" runat="server" Text="Pais:"></asp:Label>
        <asp:DropDownList ID="dwlPaisT" runat="server"></asp:DropDownList><asp:Label ID="Label2" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="lblDeporteT" runat="server" Text="Deporte"></asp:Label>
        <asp:DropDownList ID="dwlDeporteT" runat="server"></asp:DropDownList><asp:Label ID="Label3" runat="server" Text="(*)"></asp:Label>
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </asp:Panel>
    <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnNuevo" PopupControlID="pnlMantenimientoDeporte" CancelControlID="btnCancelar"></asp:ModalPopupExtender>--%>
    </div>
</asp:Content>
