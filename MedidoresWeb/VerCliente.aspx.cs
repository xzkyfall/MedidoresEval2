using StarCapModel;
using StarCapModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medidores
{
    public partial class VerCliente : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidoresDALObjetos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrilla();
            }
        }

        private void cargarGrilla()
        {
            List<Medidor> medidors = medidoresDAL.Obtener();
            this.grillaClientes.DataSource = medidors;
            this.grillaClientes.DataBind();
        }

        private void cargarGrilla(List<Medidor> filtrada)
        {
            List<Medidor> medidors = medidoresDAL.Obtener();
            this.grillaClientes.DataSource = filtrada;
            this.grillaClientes.DataBind();
        }
        protected void grillaClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                string rut = Convert.ToString(e.CommandArgument);
                medidoresDAL.Eliminar(rut);
                cargarGrilla();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarLectura.aspx");
        }
    }
}