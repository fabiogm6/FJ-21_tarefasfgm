package br.com.caelum.tarefas;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {

public Connection getConnection() throws SQLException {
        try {
              Class. forName("com.mysql.jdbc.Driver");
              System. out.println("ConnectionFactory class fj21-tarefasfgm - conectando ... beleza fábio");
       } catch (ClassNotFoundException e ) {
               throw new SQLException(e);
       }
       
        return DriverManager.getConnection( "jdbc:mysql://localhost/fj21",
                      "root", "2563" );
}
}

/* public class ConnectionFactory {

public Connection getConnection() throws SQLException {
       System.out.println(" conectando ...");

       try {
              Class.forName("com.mysql.jdbc.Driver");
       } catch (ClassNotFoundException e) {
              throw new SQLException(e);
       }
       
       return DriverManager.getConnection("jdbc:mysql:// localhost/fj21",
                     "root", "2563");
}
*/


/*
    public Connection getConnection() {
    // System.out.println(" Conectando ao banco");
    try {
            //Class.forName("com.mysql.jdbc.Driver");
            DriverManager.registerDriver(new com.mysql.jdbc.Driver()); // Essa linha foi a diferença
            return DriverManager.getConnection("jdbc:mysql:// localhost/fj21", "root", "2563");
            } catch(SQLException e) {
                e.printStackTrace();
                throw new RuntimeException(e);
            
        }
        
    }

*/
