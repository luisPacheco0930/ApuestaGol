using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApuestas.Data;
using WebApuestas.Entity;

namespace WebApuestas.BussinessLogic
{
    public class BLMantenimiento
    {
        string cadenaCNX= "";
        public BLMantenimiento()
        {
            cadenaCNX = EN_Constante.conexion;
        }
    }
}
