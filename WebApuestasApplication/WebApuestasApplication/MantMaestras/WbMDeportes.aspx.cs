﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApuestasApplication.MantMaestras
{
    public partial class WbMDeportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            //this.pnlMantenimientoDeporte.Style
            this.pnlMantenimientoDeporte.Style["display"]="block";
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoDeporte.Style["display"] = "none";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            this.pnlMantenimientoDeporte.Style["display"] = "none";
        }
    }
}