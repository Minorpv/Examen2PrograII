using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TecReparacionExamen2PrograII.CLS
{
    public class asignaciones
    {
        public int asignacionesID { get; set; }
        public int reparacionesID { get; set; }
        public int tecnicoID { get; set; }
        public string fechaAsignacion { get; set; }

        //Constructores
        public asignaciones(int reparacionesID, int tecnicoID, string fechaAsignacion)
        {
            this.reparacionesID = reparacionesID;
            this.tecnicoID = tecnicoID;
            this.fechaAsignacion = fechaAsignacion;
        }

        public asignaciones()
        {
        }
    }
}