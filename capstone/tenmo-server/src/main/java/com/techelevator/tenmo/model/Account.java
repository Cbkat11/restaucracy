package com.techelevator.tenmo.model;

import java.math.BigDecimal;

public class Account {
    private int accountId;
    private int userId;
    private Balance balance;

    public Account(int accountId, int userId, Balance balance) {
        this.accountId = accountId;
        this.userId = userId;
        this.balance = balance;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Balance getBalance() {
        return balance;
    }

    public void setBalance(Balance balance) {
        this.balance = balance;
    }
}
