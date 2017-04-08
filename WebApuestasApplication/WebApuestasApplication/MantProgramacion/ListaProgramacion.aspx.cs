using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApuestasApplication.MantProgramacion
{
    public partial class ListaProgramacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoProgramacion.Style["display"] = "none";
        }

        protected void btnRPrograma_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoProgramacion.Style["display"] = "none";
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoProgramacion.Style["display"] = "block";
        }

        protected void btnRegistrarPET_Click(object sender, EventArgs e)
        {
            this.pnlProgramarJugadas.Style["display"] = "none";
        }

        protected void btnProgramarJugadas_Click(object sender, EventArgs e)
        {
            this.pnlProgramarJugadas.Style["display"] = "block";
        }
    }
}