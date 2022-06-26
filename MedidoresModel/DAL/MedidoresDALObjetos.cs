using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarCapModel.DAL
{
    public class MedidoresDALObjetos : IMedidoresDAL
    {
        private static List<Medidor> medidores = new List<Medidor>();
        public void Agregar(Medidor medidor)
        {
            medidores.Add(medidor);
        }

        public void Eliminar(string id)
        {
            Medidor eliminado = medidores.Find(m => m.Idmedidor == id);
            medidores.Remove(eliminado);
        }

        public List<Medidor> Filtrar(string ID)
        {
            return medidores.FindAll(m => m.Idmedidor == ID);
        }

        public List<Medidor> Obtener()
        {
            return medidores;
        }
    }
}
