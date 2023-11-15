package com.authors.util;

import java.sql.*;

public class DBConnection implements DbClientInterface {
    private static final String JDBC_URL = "jdbc:sqlserver://DESKTOP-BBOAV16:1433; databaseName=AuthorsDB;integratedSecurity=true;trustServerCertificate=true";
    private static final String JDBC_USER = "DESKTOP-BBOAV16\\User";
    private static final String JDBC_PASSWORD = "";

    private static DBConnection instance;
    private Connection connection;

    private DBConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            this.connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (Exception e) {
            throw new RuntimeException("Failed to create a database connection", e);
        }
    }

    public static DBConnection getInstance() {
        if (instance == null) {
            synchronized (DBConnection.class) {
                if (instance == null) {
                    instance = new DBConnection();
                }
            }
        }
        return instance;
    }

    @Override
    public Connection makeConnection() {
        try {
            if (this.connection == null || this.connection.isClosed()) {
                this.connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Failed to create a database connection", e);
        }
        return this.connection;
    }
}
