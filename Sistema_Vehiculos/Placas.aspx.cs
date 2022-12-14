using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sistema_Vehiculos.CLS;

namespace Sistema_Vehiculos
{
    public partial class Placas : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("exec consultarPlacas"))
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

        public void agregarPlaca()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "agregarPlaca";
                cmd.Parameters.Add("@idPlaca", SqlDbType.VarChar).Value = TIDPLACA.Text.Trim();
                cmd.Parameters.Add("@NumPlaca", SqlDbType.VarChar).Value = TNumeroPlaca.Text.Trim();
                cmd.Parameters.Add("@IdUsuario", SqlDbType.VarChar).Value = DDL_IDUsuario.Text.Trim();
                cmd.Parameters.Add("@Monto", SqlDbType.VarChar).Value = TMonto.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void modificarPlaca()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "modificarPlaca";
                cmd.Parameters.Add("@idPlaca", SqlDbType.VarChar).Value = TIDPLACA.Text.Trim();
                cmd.Parameters.Add("@NumPlaca", SqlDbType.VarChar).Value = TNumeroPlaca.Text.Trim();
                cmd.Parameters.Add("@IdUsuario", SqlDbType.VarChar).Value = DDL_IDUsuario.Text.Trim();
                cmd.Parameters.Add("@Monto", SqlDbType.VarChar).Value = TMonto.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void eliminarplaca()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "eliminarplaca";
                cmd.Parameters.Add("@idPlaca", SqlDbType.VarChar).Value = TIDPLACA.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            agregarPlaca();
            LlenarGrid();
        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            modificarPlaca();
            LlenarGrid();
        }

        protected void BEliminar_Click(object sender, EventArgs e)
        {
            eliminarplaca();
            LlenarGrid();
        }
    }
}