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

### Step 1 - Be able to create a new reservation

Before anything else, we want to be able to accept new bookings from players
Provide a method to create a new reservation

### Step 2 - Validate reservations are 10 minutes apart

As with any other booking system, reservations must follow some business rules.
For our system, reservations must meet the following requirements:

- Start times must be at multiples of 10 minutes. (i.e. 9:00 and 9:10 are valid but 9:03 is invalid)

### Step 3 - Validate same-player reservations are 2 hours apart

Then we'd like to add another requirement:

- A player cannot book more than once within a 2 hours range

### API Design

Now that we have some battle-tested reservation logic,
how might we use this to build a REST API which allows players to book reservations?

### Scalability

What considerations should we make if this reservation system needs to handle thousands of request per hour?

[crest]: https://cdn2.chronogolf.com/assets/logos/Github%20-%20Header.png
