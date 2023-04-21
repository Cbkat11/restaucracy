package com.techelevator.dao;

import com.techelevator.model.Event;
import com.techelevator.model.User;

import java.util.List;

public interface EventDao {

    List<Event> findAll();

    Event getEventById(int eventId);

    List<Event> findEventsByUserId(int userId);

    int createEvent(String eventName, long createDate, long expDate, int userId);

    void updateRank(int eventId, int restaurantId, int rank);
}
