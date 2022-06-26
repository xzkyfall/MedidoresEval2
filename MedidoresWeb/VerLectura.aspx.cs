using StarCapModel;
using StarCapModel.DAL;
using StarCapModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medidores
{
    public partial class VerLectura : System.Web.UI.Page
    {
        private ILecturaDAL lecturaDAL = new LecturaDALObjetos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrilla();
            }
        }

        private void cargarGrilla()
        {
            List<Lectura> lecturas = lecturaDAL.Obtener();
            this.grillaLectura.DataSource = lecturas;
            this.grillaLectura.DataBind();
        }

        private void cargarGrilla(List<Medidor> filtrada)
        {
            List<Lectura> lecturas = lecturaDAL.Obtener();
            this.grillaLectura.DataSource = filtrada;
            this.grillaLectura.DataBind();
        }
        protected void grillaClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {

                string IdLectura = Convert.ToString(e.CommandArgument);
                lecturaDAL.Eliminar(IdLectura);
                cargarGrilla();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarLectura.aspx");
        }
    }
}