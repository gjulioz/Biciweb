package clases;


import java.sql.*;

public class verificar {
      public int existe (String val){
          int r=0;
                try { 
                       Class.forName("org.postgresql.Driver"); 
                    } catch (Exception e) { 
                       System.out.println("No se pudo cargar el puente JDBC-ODBC.");
                    } 
                           
                try{
                    Connection cnn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1/BICI", "postgres", "1111");
                    PreparedStatement ps = cnn.prepareStatement("SELECT * FROM \"USUARIO\" WHERE \"ID_USUARIO\" = '"+val+"';");
                    ResultSet rs = ps.executeQuery();
                    if(rs.next()){
                        r = 1;
                    }else{
                        r = 0;
                    }
                    }catch(SQLException ex){
                           ex.printStackTrace();
                    }
          return r;
      }
}
