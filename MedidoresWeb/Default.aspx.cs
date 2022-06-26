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
    public partial class Default : System.Web.UI.Page
    {
        private IMedidoresDAL clienteDAL = new MedidoresDALObjetos();
        
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

    


        protected void agregarBtn_Click(object sender, EventArgs e)
        {
           

        }

        protected void agregarBtn_Click1(object sender, EventArgs e)
        {
            string idmedidor = this.idTxt.Text.Trim();


            Medidor cliente = new Medidor()
            {
                Idmedidor = idmedidor,
           
            };


            clienteDAL.Agregar(cliente);

            this.mensajeslbl.Text = "Medidor Ingresado";
            Response.Redirect("VerCliente.aspx");
        }

    }
}