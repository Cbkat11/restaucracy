package com.techelevator.controller;

import com.techelevator.dao.JdbcRestaurantDao;
import com.techelevator.model.*;
import com.techelevator.dao.EventDao;
import com.techelevator.model.Event;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin
public class EventController {

    private EventDao eventDao;
    private EventRestaurant eventRestaurant;

    public EventController(EventDao eventDao) {
        this.eventDao = eventDao;
    }

    @RequestMapping(path = "/event", method = RequestMethod.POST)
    public int addEvent(@Valid @RequestBody Event event) {
        return eventDao.createEvent(event.getEventName(), event.getCreateDate(), event.getExpDate(), event.getUserID());

    }

    @RequestMapping(path = "/event/{eventId}", method = RequestMethod.GET)
    public Event getEventByEventId(@PathVariable int eventId) {
        Event event = eventDao.getEventById(eventId);
        if (event == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Event not found.");
        } else {
            return event;
        }
    }

    @RequestMapping(path = "/{userId}/events", method = RequestMethod.GET)
    public List<Event> getEventsByUserId(@PathVariable int userId) {
        return eventDao.findEventsByUserId(userId);
    }



    @RequestMapping(path = "/rank/{restaurantId}/{eventId}", method = RequestMethod.PUT)
    public void addRank(@RequestBody int rank, @PathVariable int restaurantId, @PathVariable int eventId) {
        eventDao.updateRank(eventId, restaurantId, rank);
    }


}

