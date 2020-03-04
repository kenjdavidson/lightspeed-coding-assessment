![Chronogolf][crest]

# The Booking Engine challenge

Golf clubs manage player reservations through our system. When a player wants to
make a reservation, they request it through a booking engine. The system will
then confirm if the submitted reservation is valid.

Your mission consists of building a simple booking application that validates
and returns a list of confirmed reservations.

```ruby
class BookingEngine
end
```

**Step 1**

The booking engine must implement the following rules:

- A minimum of 10 minutes between start times
- For a given player, each reservation must be at least 2 hours apart

To get started, here is the list of confirmed reservations.

```ruby
[
  { id: 1, starts_at: "2020-02-01 06:00:00 -0500", player: "Anna" },
  { id: 2, starts_at: "2020-02-01 06:10:00 -0500", player: "Mike" },
  { id: 3, starts_at: "2020-02-01 06:20:00 -0500", player: "Mary" }
]
```

**Step 2**

Once the engine is in place, demonstrate how the system can handle a request for
a reservation and mark it as "confirmed" if valid.

The expected output is to append the list of reservations with the new request.

**Step 3**

Finally, let's assume that the Front-End team expects a payload that lists all
reservations.

Update your code to be able to return a payload meeting the following
requirements:

- JSON format
- Pagination (2 records per page)

[crest]: https://cdn2.chronogolf.com/assets/logos/Github%20-%20Header.png
