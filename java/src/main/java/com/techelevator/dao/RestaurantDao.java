package com.techelevator.dao;

import com.techelevator.model.Restaurant;

import java.util.List;

public interface RestaurantDao {

    List<Restaurant> findAllRestaurants();

    Restaurant getRestaurantById(int eventId);

    List<Restaurant> getRestaurantsByEventId(int eventId);

    public boolean addRestaurantToEvent(int eventID, int restaurantID);

    public void updateRank(int eventId, int restaurantId, int rank);


}


