package com.techelevator.tenmo.dao;

import com.techelevator.tenmo.model.Account;
import com.techelevator.tenmo.model.Balance;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.math.BigDecimal;




@Component
public class JdbcAccountDao implements AccountDao {

    private JdbcTemplate jdbcTemplate;


    public Balance getBalance(String user) {
        String sql = "select balance from account  JOIN tenmo_user ON account.user_id = tenmo_user.user_id WHERE username = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, user);
        Balance balance = new Balance();

        if (results.next()) {
            String accountBalance = results.getString("balance");
            balance.setBalance(new BigDecimal(accountBalance));
        }
        return balance;
    }
}