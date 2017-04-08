<%@ Page Title="" Language="C#" MasterPageFile="~/SiteApuestasAdmin.Master" AutoEventWireup="true" CodeBehind="WbMTorneoEquipo.aspx.cs" Inherits="WebApuestasApplication.MantMaestras.WbMTorneoEquipo" %>
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
    <div id="Titulo">>> MANTENIMIENTO TORNEO - ADICIONAR EQUIPOS</div>
    <div id="Cabecera" >
        <asp:Label ID="lblDescripcionTorneo" runat="server" Text="lblDescripcionTorneo"></asp:Label>
        <asp:Label ID="lblDeporte" runat="server" Text="lblDeporte"></asp:Label>
    </div>
    <div id="Filtro" >
        <asp:Label ID="lblBEquipo" runat="server" Text="Nombre Equipo"></asp:Label>
        <asp:TextBox ID="txtBEquipo" runat="server"></asp:TextBox>

        <asp:Label ID="lblBPais" runat="server" Text="Pais:"></asp:Label>
        <asp:DropDownList ID="dwlBPais" runat="server"></asp:DropDownList>

        <asp:Label ID="lblBEstado" runat="server" Text="Estado:"></asp:Label>
        <asp:DropDownList ID="dwlBEstado" runat="server"></asp:DropDownList>

    </div>
    <div id="opciones">
        <asp:Button ID="btnNuevo" CssClass="" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" CssClass="" runat="server" Text="Editar" />
        <asp:Button ID="btnEliminar" CssClass="" runat="server" Text="Eliminar" />
        <asp:Button ID="btnActInact" CssClass="" runat="server" Text="Activar/Inactivar" />
    </div>
    <div id="Listado">
        <asp:GridView ID="dgwListaTorneoEquipos" runat="server"></asp:GridView>
    </div>

    <%--Panel de Mantenimiento--%>
    <div id="panelMantenedorTorneoEquipo">
    <asp:Panel ID="pnlMantenimientoTorneoEquipo" runat="server" CssClass="modalpopup" Style="display:none">
        <asp:Label ID="lblPais" runat="server" Text="Pais:"></asp:Label>
        <asp:DropDownList ID="dwlPais" runat="server"></asp:DropDownList><asp:Label ID="Label2" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="lblEquipo" runat="server" Text="Equipo:"></asp:Label>
        <asp:DropDownList ID="dwlEquipo" runat="server"></asp:DropDownList><asp:Label ID="Label3" runat="server" Text="(*)"></asp:Label>
        <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" OnClick="btnAdicionar_Click"/>
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </asp:Panel>
    <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnNuevo" PopupControlID="pnlMantenimientoDeporte" CancelControlID="btnCancelar"></asp:ModalPopupExtender>--%>
    </div>

</asp:Content>
