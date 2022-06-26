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
    public partial class AgregarLectura : System.Web.UI.Page
    {
        private ILecturaDAL lecturaDAL = new LecturaDALObjetos();
        private IMedidoresDAL medidoresDAL = new MedidoresDALObjetos();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                List<Medidor> list = medidoresDAL.Obtener();
                this.MedidoresDDL.DataSource = list;
                this.MedidoresDDL.DataTextField = "Idmedidor";
                this.MedidoresDDL.DataValueField = "Idmedidor";
                this.MedidoresDDL.DataBind();

            }
        }

        protected void DateChange(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        }


        protected void agregarB_Click(object sender, EventArgs e)
        {
            string idlectura = this.MedidoresDDL.SelectedValue;
            string fecha = this.TextBox1.Text.Trim();
            string valorConsumo = this.valorTxt.Text.Trim();
            string hora = this.horaTxt.Text.Trim();
            string minuto = this.minutoTxt.Text.Trim();


            Lectura lectura = new Lectura()
            {
                IdLectura = idlectura,
                Fecha = fecha,
                Hora = hora,
                Minuto = minuto,
                ValorConsumo = valorConsumo
            };


            lecturaDAL.Agregar(lectura);

            Response.Redirect("VerLectura.aspx");
        }

    }
}