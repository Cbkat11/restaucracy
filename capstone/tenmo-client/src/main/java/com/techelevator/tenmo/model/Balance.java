package com.techelevator.tenmo.model;

<<<<<<< HEAD
import java.math.BigDecimal;

public class Balance {
   private BigDecimal balance;

    public BigDecimal getBalance() {
        return balance;

    }
    public void setBalance(BigDecimal balance) {this.balance =balance;}
}
=======

import java.math.BigDecimal;

public class Balance {

    private BigDecimal balance;

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public void receiveMoney(BigDecimal amount) {
        this.balance = new BigDecimal(String.valueOf(balance)).add(amount);
    }
}
>>>>>>> d108033854e3630a263cb74225e7a6b3d5ec0021
