package com.techelevator.tenmo.dao;

import com.techelevator.tenmo.model.Account;
import com.techelevator.tenmo.model.Balance;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.math.BigDecimal;

public interface AccountDao {

   public Balance getBalance(String user);
}
