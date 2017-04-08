using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApuestasApplication.MantMaestras
{
    public partial class WbMTorneoEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoTorneoEquipo.Style["display"] = "none";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoTorneoEquipo.Style["display"] = "none";
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoTorneoEquipo.Style["display"] = "normal";
        }
    }
}