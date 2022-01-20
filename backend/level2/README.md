# Level 2

To maximize its occupancy and revenue, the club can choose to decrease or increase the price of a tee-time when golfers book well in advance or at the last minute.

Thanks to the dynamic pricing engine, the club decides to create the following rules:

- Price per golfer decreases by **20%** when booking **7 days** before the tee-time
- Price per golfer decreases by **10%** when booking **2 days** before the tee-time
- Price per golfer increases by **5%** when booking the **same day** as the tee-time

Again, calculate the price of each reservation by taking into account those rules.

# Notes

Some notes regarding decisions and choices made:

## Currency

I'm still torn on outputting integers to match the current file or always including `.00` on output currencies.  I wasn't sure how far to take this, but in general I probably should have started using `bigdecimal` or some other currency library sooner.