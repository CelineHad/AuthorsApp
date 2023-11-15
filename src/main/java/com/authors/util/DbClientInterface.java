package com.authors.util;

import java.sql.Connection;

public interface DbClientInterface {
    public Connection makeConnection();
}
