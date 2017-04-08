<%@ Page Title="" Language="C#" MasterPageFile="~/SiteApuestasAdmin.Master" AutoEventWireup="true" CodeBehind="ListaProgramacion.aspx.cs" Inherits="WebApuestasApplication.MantProgramacion.ListaProgramacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainApuestas" runat="server">
    <div id="Titulo">PROGRAMACIÓN DE APUESTAS</div>
    <div id="Filtro">
        <asp:Label ID="lblBFhInicial" runat="server" Text="Fh. Inicial: "></asp:Label>
        <asp:TextBox ID="txtBFhInicial" runat="server"></asp:TextBox>
        <asp:Label ID="lblBFhFinal" runat="server" Text="Fh. Final: "></asp:Label>
        <asp:TextBox ID="txtBfhFinal" runat="server"></asp:TextBox>
        <asp:Label ID="lblBMontoPozo" runat="server" Text="Pozo: "></asp:Label>
        <asp:TextBox ID="txtBMontoPozo" runat="server"></asp:TextBox>
        <asp:Label ID="lblTipoJuego" runat="server" Text="Opción Apuesta: "></asp:Label>
        <asp:DropDownList ID="dwlTipoApuesta" runat="server"></asp:DropDownList>
        <asp:Label ID="lblBEstado" runat="server" Text="Estado Programación: "></asp:Label>
        <asp:DropDownList ID="dwlBEstadoPrograma" runat="server"></asp:DropDownList>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
    </div>

    <div id="opciones">
        <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" runat="server" Text="Editar" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
        <asp:Button ID="btnProgramarJugadas" runat="server" Text="1.Programar Jugadas" OnClick="btnProgramarJugadas_Click" />
        <asp:Button ID="btnPublicarProgApuesta" runat="server" Text="2.Publicar Programación" />
        <asp:Button ID="btnRegistrarResultado" runat="server" Text="3.Registrar Resultado" />
        <asp:Button ID="btnPublicarResultado" runat="server" Text="4.Publicar Resultado" />
    </div>

    <div id="Lista">
        <asp:GridView ID="gvwListaProgramacion" runat="server"></asp:GridView>
    </div>
    <%--Panel de Mantenimiento--%>
    <div id="panelMantenedorProgramacion">
    <asp:Panel ID="pnlMantenimientoProgramacion" runat="server" CssClass="modalpopup" Style="display:normal">
        <asp:Label ID="lblNroPrograma" runat="server" Text="Nº Programa:"></asp:Label>
        <asp:Label ID="lblIdPrograma" runat="server" Text="lblIdPrograma"></asp:Label>
        

        <asp:Label ID="Label4" runat="server" Text="Cant. Jugadas del Programa:"></asp:Label>
        <asp:TextBox ID="txtCantJugadas" runat="server"></asp:TextBox><asp:Label ID="Label5" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="lblFhInicio" runat="server" Text="Fh. Inicio: "></asp:Label>
        <asp:TextBox ID="txtFhInicio" runat="server"></asp:TextBox><asp:Label ID="Label2" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="lblFhFinal" runat="server" Text="Fh. Final: "></asp:Label>
        <asp:TextBox ID="txtFhFinal" runat="server"></asp:TextBox><asp:Label ID="Label3" runat="server" Text="(*)"></asp:Label>

        <asp:Label ID="lblPozoApuesta" runat="server" Text="Pozo:"></asp:Label>
        <asp:TextBox ID="txtPozoApuesta" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="(*)"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Cant. jugada:"></asp:Label>
        <asp:TextBox ID="txtCantJugadaXPozo" runat="server"></asp:TextBox>
        <asp:Button ID="btnRPrograma" runat="server" Text="Registrar Programa" OnClick="btnRPrograma_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </asp:Panel>
    <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnNuevo" PopupControlID="pnlMantenimientoDeporte" CancelControlID="btnCancelar"></asp:ModalPopupExtender>--%>
    </div>

    <div id="panelProgramarJugadas">
        <asp:Panel ID="pnlProgramarJugadas" runat="server" CssClass="modalpopup" Style="display:none">
            <asp:Label ID="lblNroProgramaJ" runat="server" Text="Nº Programa: "></asp:Label>
            <asp:Label ID="lblIdProgramaJ" runat="server" Text="lblIdProgramaJ"></asp:Label>
            <asp:Label ID="lblTorneoJ" runat="server" Text="Seleccione Torneo:"></asp:Label>
            <asp:DropDownList ID="dwlTorneoJ" runat="server"></asp:DropDownList>
            <asp:Label ID="lblEquipo1" runat="server" Text="Equipo Local: "></asp:Label>
            <asp:DropDownList ID="dwlEquipoL" runat="server"></asp:DropDownList>
            <asp:Label ID="lblEquipo2" runat="server" Text="Equipo Visitante: "></asp:Label>
            <asp:DropDownList ID="dwlEquipoV" runat="server"></asp:DropDownList>
            <div id="OpcionesPET">
                <asp:Button ID="btnAdicionarPET" runat="server" Text="Adicionar" />
                <asp:Button ID="btnEliminarPET" runat="server" Text="Eliminar" />
                <asp:Label ID="Label6" runat="server" Text="Cantidad jugadas: "></asp:Label>
                <asp:Label ID="lblCantPET" runat="server" Text="lblCantPET"></asp:Label>
            </div>
            <div id="ListaProgramacionEquipoTorneo">
                <asp:GridView ID="gvwListaProgramacionET" runat="server"></asp:GridView>
            </div>
            <div><asp:Button ID="btnRegistrarPET" runat="server" Text="Registrar Programación Jugadas" OnClick="btnRegistrarPET_Click" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
