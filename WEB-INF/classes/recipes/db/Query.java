package recipes.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Esta clase ha sido reutilizada de las pr�cticas de la asignatura y se utiliza para hacer consultas a la base de datos
public class Query {

    Statement stmt;

    // M�todo que crea un objeto Statement a partir de un objeto Connection
	public Query(Connection con) throws SQLException {
        stmt=con.createStatement();
    }

    // M�todo para ejecutar sentencias SELECT SQL 
    public ResultSet doSelect(String query) throws Exception {
    ResultSet rs = stmt.executeQuery(query);
        return rs;
    }

    // M�todo para ejecutar sentencias SQL INSERT o DELETE 
    public int doUpdate(String query) throws SQLException {
	return stmt.executeUpdate(query);
    }
 
    // M�todo para cerrar un objeto Statement
    public void close() throws SQLException {
        stmt.close();
    }
}
