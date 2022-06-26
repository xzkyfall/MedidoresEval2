using StarCapModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarCapModel.DAL
{
    public interface ILecturaDAL
    {
        List<Lectura> Obtener();
        void Agregar(Lectura lectura);

        void Eliminar(string idLectura);

        List<Lectura> Filtrar(string idLectura);
    }
}
