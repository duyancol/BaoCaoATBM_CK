package com.example.demo11.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import java.sql.SQLException;
import static com.example.demo11.db.DBProperties.*;

public class JDBIConnector {
    private static Jdbi jdbi;
    private static void makeConnect(){
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://"+getDbHost()+":"+getDbPort()+"/"+getDatabaseName());
        dataSource.setUser(getUsername());
        dataSource.setPassword(getPassword());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        }catch (SQLException throwables){
            throwables.printStackTrace();
            throw  new RuntimeException(throwables);
        }
        jdbi =Jdbi.create(dataSource);
        }
        private JDBIConnector(){

        }
        public static Jdbi get(){
        if(jdbi==null) makeConnect();
        return jdbi;

        }
    }


