![Chronogolf][crest]

# The Booking Engine challenge

Golf clubs manage player reservations through our system.
When a player wants to make a reservation, the request needs to be passed through a booking engine that will determine if the request is valid. The system will then confirm the reservation if valid.

Your mission consists of building a simple booking engine that validates reservations, and returns the list of confirmed reservations.

```ruby
class BookingEngine
end
```

**Step 1**

The booking engine must implement the following rules:

- A minimum of 10 minutes between starts
- A customer's reservation start times must be min. 2 hours apart

To get started, here is the list of confirmed reservations.

```ruby
[
  { id: 1, "starts_at": "2020-02-01 06:00:00", customer: "Anna" },
  { id: 2, "starts_at": "2020-02-01 06:10:00", customer: "Mike" },
  { id: 3, "starts_at": "2020-02-01 06:20:00", customer: "Mary" }
]
```

**Step 2**

Once the engine is in place, demonstrate how the system can handle a request for reservation and mark it as "confirmed" if valid.

The expected output is to simply append the list of reservations with the new request.

**Step 3**

Finally, let's assume that the Front-End team expects a payload with all the reservations.

Update your code to be able to return a payload meeting the following requirements:

- JSON format
- Pagination (2 records per page)

[crest]: https://cdn2.chronogolf.com/assets/logos/Github%20-%20Header.png
