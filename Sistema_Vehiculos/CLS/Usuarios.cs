using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Sistema_Vehiculos.CLS
{
    public class Usuarios
    {
        public static int IdUsuario { get; set; }

        public static string Usuario { get; set; }

        public static string Clave { get; set; }

        public static string Nombre { get; set; }

        public static string Apellidos { get; set; }


        public static int validarLogin(string Usuario, string Clave)
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DboCon.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("validarUsuario", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Usuario", Usuario));
                    cmd.Parameters.Add(new SqlParameter("@Clave", Clave));

                    cmd.ExecuteNonQuery();
                    retorno = 1;
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }
    }
}
