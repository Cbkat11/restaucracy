package com.techelevator.model;

public class Event {

    private int eventId;
    private String eventName;
    private String link;
    private long createDate;
    private long expDate;
    private int userId;


    public Event(int eventId, String eventName, String link, long createDate, long expDate, int userId) {
        this.eventId = eventId;
        this.eventName = eventName;
        this.link = link;
        this.createDate = createDate;
        this.expDate = expDate;
        this.userId = userId;
    }

    public int getEventID(){
        return eventId;
    }

    public void setEventID(int eventID) {
        this.eventId = eventID;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public long getCreateDate() {
        return createDate;
    }

    public void setCreateDate(long createDate) {
        this.createDate = createDate;
    }

    public long getExpDate() {
        return expDate;
    }

    public void setExpDate(long expDate) {
        this.expDate = expDate;
    }

    public int getUserID() {
        return userId;
    }

    public void setUserID(int userID) {
        this.userId = userID;
    }
}
