using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TecReparacionExamen2PrograII.CLS
{
    public class detallesReparacion
    {
        public int detallereparacionID { get; set; }
        public int reparacionID { get; set; }
        public string descripcion { get; set; }
        public string fechaInicio { get; set; }
        public string fechaFinal { get; set; }

        //Constructores
        public detallesReparacion(int reparacionID, string descripcion, string fechaInicio, string fechaFinal)
        {

            this.reparacionID = reparacionID;
            this.descripcion = descripcion;
            this.fechaInicio = fechaInicio;
            this.fechaFinal = fechaFinal;
        }

        public detallesReparacion()
        {
        }
    }
}