using StarCapModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarCapModel.DAL
{
    public class LecturaDALObjetos : ILecturaDAL
    {
        private static List<Lectura> lecturas = new List<Lectura>();
        public void Agregar(Lectura lectura)
        {
            lecturas.Add(lectura);
        }

        public void Eliminar(string id)
        {
            Lectura eliminado = lecturas.Find(l => l.IdLectura == id);
            lecturas.Remove(eliminado);
        }

        public List<Lectura> Filtrar(string valor)
        {
            return lecturas.FindAll(l => l.ValorConsumo == valor);
        }

        public List<Lectura> Obtener()
        {
            return lecturas;
        }
    }
}
