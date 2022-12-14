using Sistema_Vehiculos.CLS;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Vehiculos
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["VehiculosConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("exec consultarUsuarios"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        public void agregarUsuarios()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "agregarUsuarios";
                cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TUsuario.Text.Trim();
                cmd.Parameters.Add("@Clave", SqlDbType.VarChar).Value = TClave.Text.Trim();
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = TNombre.Text.Trim();
                cmd.Parameters.Add("@Apellidos", SqlDbType.VarChar).Value = TApellidos.Text.Trim();


                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void modificarUsuarios()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "modificarUsuarios";
                cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TUsuario.Text.Trim();
                cmd.Parameters.Add("@Clave", SqlDbType.VarChar).Value = TClave.Text.Trim();
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = TNombre.Text.Trim();
                cmd.Parameters.Add("@Apellidos", SqlDbType.VarChar).Value = TApellidos.Text.Trim();


                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void eliminarUsuarios()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "eliminarUsuarios";
                cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TUsuario.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            agregarUsuarios();
            LlenarGrid();
        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            modificarUsuarios();
            LlenarGrid();
        }

        protected void BEliminar_Click(object sender, EventArgs e)
        {
            eliminarUsuarios();
            LlenarGrid();
        }
    }


}
