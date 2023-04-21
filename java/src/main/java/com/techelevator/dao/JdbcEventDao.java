package com.techelevator.dao;

import com.techelevator.dao.EventDao;
import com.techelevator.model.Event;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


@Component
public class JdbcEventDao implements EventDao {

    private List<Event> events = new ArrayList<>();

    private final JdbcTemplate jdbcTemplate;

    public JdbcEventDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void updateRank(int eventId, int restaurantId, int rank) {
        String sql = "UPDATE rank " +
                "SET total_rank = total_rank + ? " +
                "WHERE event_id = ? AND restaurant_id = ?;";
        jdbcTemplate.update(sql, rank, eventId, restaurantId);
    }

    @Override
    public List<Event> findAll() {
        List<Event> events = new ArrayList<>();
        String sql = "select * from event";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Event event = mapRowToEvent(results);
            events.add(event);
        }

        return events;
    }

    @Override
    public Event getEventById(int eventId) {
        String sql = "SELECT event_id, event_name, link, create_time, expire_time, user_id FROM event WHERE event_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, eventId);
        if (results.next()) {
            return mapRowToEvent(results);
        } else {
            return null;
        }
    }

    @Override
    public List<Event> findEventsByUserId(int userId) {
        List<Event> events = new ArrayList<>();

        String sql = "SELECT event_id FROM event WHERE user_id = ?";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, userId);

        while (rowSet.next()) {
            Event event = getEventById(rowSet.getInt("event_id"));
            events.add(event);
        }
        return events;
    }

    @Override
    public int createEvent(String eventName, long createDate, long expDate, int userID) {
        String insertEventSql = "insert into event (event_name, create_time, expire_time, user_id) values (?,?,?,?) returning event_id;";
//        int id = jdbcTemplate.update(insertEventSql, eventName, createDate, expDate, userID);
        int id = jdbcTemplate.queryForObject(insertEventSql, Integer.class, eventName, createDate, expDate, userID);
        return id;
    }


    private Event mapRowToEvent(SqlRowSet row) {
        Event event = new Event(row.getInt("event_id"),
                row.getString("event_name"),row.getString("link"),
                row.getLong("create_time"),row.getLong("expire_time"),
                row.getInt("user_id") );
//        event.setEventID(row.getInt("event_id"));
//        event.setEventName(row.getString("event_name"));
//        event.setLink(row.getString("link"));
//        event.setCreateDate(row.getLong("create_time"));
//        event.setExpDate(row.getLong("expire_time"));
//        event.setUserID(row.getInt("user_id"));
        return event;
    }
}