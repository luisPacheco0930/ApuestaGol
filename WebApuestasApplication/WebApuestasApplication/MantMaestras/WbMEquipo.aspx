<%@ Page Title="" Language="C#" MasterPageFile="~/SiteApuestasAdmin.Master" AutoEventWireup="true" CodeBehind="WbMEquipo.aspx.cs" Inherits="WebApuestasApplication.MantMaestras.WbMEquipo" %>
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
            width:250px;
            height:100px;
            background-color:white;
            border:1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainApuestas" runat="server">
    <div id="Titulo">>> MANTENIMIENTO EQUIPO</div>
    <div id="Filtro" >
        <asp:Label ID="lblBNombreEquipo" runat="server" Text="Busqueda por Nombre: "></asp:Label>
        <asp:TextBox ID="txtBNombreEquipo" runat="server"></asp:TextBox>
        <asp:Label ID="lblBPais" runat="server" Text="Pais"></asp:Label>
        <asp:DropDownList ID="dwlBPais" runat="server" AutoPostBack="True"></asp:DropDownList>
        <asp:Label ID="lblBEstado" runat="server" Text="Estado"></asp:Label>
        <asp:DropDownList ID="dwlBEstado" runat="server"></asp:DropDownList>
    </div>
    <div id="opciones">
        <asp:Button ID="btnNuevo" CssClass="" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" CssClass="" runat="server" Text="Editar" />
        <asp:Button ID="btnEliminar" CssClass="" runat="server" Text="Eliminar" />
        <asp:Button ID="btnActInact" CssClass="" runat="server" Text="Activar/Inactivar" />
    </div>
    <div id="Listado">
        <asp:GridView ID="dgwListaEquipo" runat="server"></asp:GridView>
    </div>

    <%--Panel de Mantenimiento--%>
    <div id="panelMantenedorEquipo">
    <asp:Panel ID="pnlMantenimientoEquipo" runat="server" CssClass="modalpopup" Style="display:none">
        <asp:Label ID="lblNombreEquipo" runat="server" Text="Nombre equipo"></asp:Label>
        <asp:TextBox ID="txtnombreEquipo" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="lblPais" runat="server" Text="Pais: "></asp:Label>
        <asp:DropDownList ID="dwlPais" runat="server"></asp:DropDownList>
        <asp:Label ID="lblSimbolo" runat="server" Text="Simbolo: "></asp:Label>
        <asp:FileUpload ID="fuSimbolo" runat="server" />
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </asp:Panel>
    <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnNuevo" PopupControlID="pnlMantenimientoDeporte" CancelControlID="btnCancelar"></asp:ModalPopupExtender>--%>
    </div>
</asp:Content>
