using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarCapModel.DTO
{
    public class Lectura
    {   
        private string idLectura;
        private string fecha;
        private string hora;
        private string minuto;
        private string valorConsumo;

        public string Fecha { get => fecha; set => fecha = value; }
        public string Hora { get => hora; set => hora = value; }
        public string ValorConsumo { get => valorConsumo; set => valorConsumo = value; }
        public string IdLectura { get => idLectura; set => idLectura = value; }
        public string Minuto { get => minuto; set => minuto = value; }
    }
}
