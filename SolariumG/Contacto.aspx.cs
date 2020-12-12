using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace SolariumG
{
    public partial class Contacto : System.Web.UI.Page
    {
        private Consulta consulta;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            this.consulta = new Consulta();

            this.consulta.email = this.txtEmail.Text.Trim();
            this.consulta.nombreCompleto = this.txtNombreCompleto.Text.Trim();
            this.consulta.consulta = this.txtConsulta.Text.Trim();
            this.enviarEmail(consulta);

            Response.Redirect("Default.aspx");
        }

        private void enviarEmail(Consulta temp)
        {
            try
            {
                Email email = new Email();
                email.enviar(temp, Server.MapPath(".") + @"\css\img\Banner.jpg");
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}