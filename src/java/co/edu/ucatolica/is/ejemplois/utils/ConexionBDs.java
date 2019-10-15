/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.utils;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import javax.sql.DataSource;

/**
 *
 * @author sala8
 */
public class ConexionBDs {
    
    public static DataSource getMysqlDataSource() {
        MysqlDataSource dataSource = new MysqlDataSource();

        // Set dataSource Properties
        dataSource.setServerName("localhost");
        dataSource.setPortNumber(3306);
        dataSource.setDatabaseName("persona");
        dataSource.setUser("root");
        dataSource.setPassword("root");
        return dataSource;
    }

}
