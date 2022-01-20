# Level 3

In order to reduce no-shows (e.g. golfers not showing up), a club can require the reservation to be paid upfront with a credit card. In this case, fees need to be calculated and split among the payment processor (e.g. Stripe) and us (e.g. to pay your salary 😃).

The fee is 3% and is transparent to the golfer. It is split like so:

- 1.9% + 0.30\$ to the payment gateway
- the rest goes to us

Calculate the amount we need to send to our payment gateway and to us.

## Notes

Some notes regarding decisions and choices made:

### Currency

Much like `level1` and `level2` the choices made for currency are relatively poor.  I just found that there was a `bigdecimal` and some other currency related libraries which I would have preferred using over the output of integers (but I attempted to match the output provided as best as possible). 

Personally I like seeing `.00` even on whole dollar amounts but assume this decision was made on purpose, so I attempted to follow it. 

### Engine(s)

Currently the `total_price` and `fees` methods within the `Reservation` class are responsible for calling through to the `Pricing::PricingEngine` and `Fee:FeeEngine` which I'm not completely satisfied with.

I'm not entirely sure what the best practice for Ruby is for this.  In the real world I would expect the internals of `PricingEngine` and `FeeEngine` to be pulled from a database, which means they'd need to get injected into Reservation somehow (again not sure on Ruby or Rails).  

In Java the `Reservation` would have been pumped through a `Service`/`Factory` of some sorts that would have been responsible for populating those parts of the `Reservation`.