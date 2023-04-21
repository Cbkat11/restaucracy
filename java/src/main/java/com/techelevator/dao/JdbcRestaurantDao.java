package com.techelevator.dao;

import com.techelevator.model.Event;
import com.techelevator.model.Restaurant;
import com.techelevator.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Component
public class JdbcRestaurantDao implements RestaurantDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcRestaurantDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Restaurant getRestaurantById(int eventId) {
        String sql = "SELECT * FROM event WHERE event_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, eventId);
        if (results.next()) {
            return mapRowToRestaurant(results);
        } else {
            return null;
        }
    }


    @Override
    public List<Restaurant> findAllRestaurants() {
        List<Restaurant> restaurants = new ArrayList<>();
        String sql = "select * from restaurant";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Restaurant restaurant = mapRowToRestaurant(results);
            restaurants.add(restaurant);
        }

        return restaurants;
    }

    @Override
    public boolean addRestaurantToEvent(int eventID, int restaurantID) {
        String insertRestaurantIDsSql = "INSERT INTO rank (restaurant_id, event_id) " +
                "VALUES (?,?);";
        return jdbcTemplate.update(insertRestaurantIDsSql, restaurantID, eventID) == 1;
    }

    @Override
    public List<Restaurant> getRestaurantsByEventId(int eventId) {
        List<Restaurant> restaurants = new ArrayList<>();

        String sql = "SELECT restaurant.restaurant_id, restaurant.name, hours, address, type, img_url, total_rank " +
                "FROM rank " +
                "JOIN restaurant ON restaurant.restaurant_id = rank.restaurant_id " +
                "WHERE event_id = ?";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, eventId);

        while (rowSet.next()) {
            Restaurant restaurant = new Restaurant();
            restaurant.setId(rowSet.getInt("restaurant_id"));
            restaurant.setName(rowSet.getString("name"));
            restaurant.setType(rowSet.getString("type"));
            restaurant.setAddress(rowSet.getString("address"));
            restaurant.setImgUrl(rowSet.getString("img_url"));
            restaurant.setHours((rowSet.getString("hours")));
            restaurant.setTotalRank(rowSet.getInt("total_rank"));
            restaurants.add(restaurant);
        }
        return restaurants;

    }

    @Override
    public void updateRank(int eventId, int restaurantId, int rank) {
        String sql = "UPDATE rank SET total_rank = total_rank + ? WHERE event_id = ? AND restaurant_id = ?";
        jdbcTemplate.update(sql, rank, eventId, restaurantId);
    }

    private Restaurant mapRowToRestaurant(SqlRowSet row) {
        Restaurant restaurant = new Restaurant();
        restaurant.setId(row.getInt("restaurant_id"));
        restaurant.setName(row.getString("name"));
        restaurant.setType(row.getString("type"));
        restaurant.setAddress(row.getString("address"));
        restaurant.setHours(row.getString("hours"));
        restaurant.setPhoneNumber(row.getString("phone_number"));
        restaurant.setStars(row.getDouble("stars"));
        restaurant.setImgUrl(row.getString("img_url"));
        restaurant.setTakeout(row.getBoolean("takeout"));
        restaurant.setDelivery(row.getBoolean("delivery"));
        restaurant.setPriceRange(row.getString("price_range"));
        restaurant.setWebsite(row.getString("website"));
        restaurant.setReviews(row.getString("reviews"));
        return restaurant;
    }
}

