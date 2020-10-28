package com.mysql.jdbc.exceptions;

import java.sql.SQLIntegrityConstraintViolationException;

public class MySQLIntegrityConstraintViolationException extends SQLIntegrityConstraintViolationException {

    static final long serialVersionUID = -5528363270635808904L;

    public MySQLIntegrityConstraintViolationException() {
        super();
    }

    public MySQLIntegrityConstraintViolationException(String reason, String SQLState, int vendorCode) {
        super(reason, SQLState, vendorCode);
    }

    public MySQLIntegrityConstraintViolationException(String reason, String SQLState) {
        super(reason, SQLState);
    }

    public MySQLIntegrityConstraintViolationException(String reason) {
        super(reason);
    }
}