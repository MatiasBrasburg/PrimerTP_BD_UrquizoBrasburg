using Microsoft.Data.SqlClient;
using Dapper;



public static class BD
{

private static string _connectionString = @"Server=localhost;
DataBase=ProgTP6BaseDeDatos;Integrated Security=True;TrustServerCertificate=True;";



public static bool CompararUsuarioEnBD (string NombreUSU, string Contrasena)
{//hacer el otro tipo de queri este esta mal
bool existe = false;
    using (SqlConnection connection = new SqlConnection(_connectionString))
    {
        string query = "SELECT NombreUsuario, Cotrasena FROM Integrantes where NombreUsuario = @NombreUsuario AND Cotrasena = @Cotrasena ";
        existe = connection.Query<Integrantes>(query, new {pNombreusuarios = NombreUSU, pContrasena = Contrasena});
    }
    return existe;
}





















}
