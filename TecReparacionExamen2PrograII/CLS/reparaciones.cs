using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TecReparacionExamen2PrograII.CLS
{
    public class reparaciones
    {
        public int reparacionesID { get; set; }
        public int equipoID { get; set; }
        public string fechaSolicitud { get; set; }
        public string estado { get; set; }

        //Constructores
        public reparaciones(int equipoID, string fechaSolicitud, string estado)
        {
            this.equipoID = equipoID;
            this.fechaSolicitud = fechaSolicitud;
            this.estado = estado;
        }

        public reparaciones()
        {
        }
    }
}