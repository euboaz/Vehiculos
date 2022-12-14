using Sistema_Vehiculos.CLS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Vehiculos
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            Usuarios.Usuario = TEmail.Text;
            Usuarios.Clave = TPassword.Text;

            if (Usuarios.validarLogin(Usuarios.Usuario, Usuarios.Clave) > 0)
            {

                    Response.Redirect("PaginaPrincipal.aspx");
                
            }
            else
            {

            }
        }
    }
}