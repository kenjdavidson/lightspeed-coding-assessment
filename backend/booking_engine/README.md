![Chronogolf][crest]

# The Booking Engine challenge

Golf clubs manage player reservations through our system. When a player wants to
make a reservation, they request it through a booking engine. The system will
then confirm if the submitted reservation is valid.

Your mission today consists of building a simple booking application that
validates reservation requests and returns a list of confirmed reservations.

### Environment Setup

Let's take care of your setup first.

- Choose a dev environment and a language that suits you
  - A dev environment on your personal computer is perfect!
  - Coderpad is available if you would prefer
  - Choose the language you are most comfortable with
- Let's start pairing together!

### Reservation Validation

As with any other booking system, reservations must follow some business rules.

For our system, reservations must meet the following requirements:

- Start times must be 10-minute intervals. (i.e. 9:00 and 9:10 are valid but 9:03 is invalid)
- For any given player, their reservations must be at least 2 hours apart.

**Let's write some code to perform this validation.**

### Testing

Great! Now that we have some code to validate our reservations, let's write some tests.

**Start with the basics:**
- Given a valid reservation, our code returns `true`
- Given an invalid interval, our code returns `false`
- Given a reservation that overlaps for this player, our code returns `false`

Now let's think about some edge cases. **How could we break our code?** 

### API Design

Now that we have some battle-tested reservation logic, 
how might we use this to build a REST API which allows players to book reservations?

### Scalability

What considerations should we make if this reservation system needs to handle thousands of request per hour?

[crest]: https://cdn2.chronogolf.com/assets/logos/Github%20-%20Header.png
