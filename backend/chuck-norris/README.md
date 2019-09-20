![Chronogolf][crest]

# The Chuck Norris challenge

Binary with 0 and 1 is cool. But binary with "almost" only 0 is so much better!
Invented by Chuck Norris, this concept allows you to send unaries messages.

Here is how it is encoded:

- The input message is composed of ASCII characters (7 bits)
- The output message is encoded and composed of blocks made of 0
- The space character is used as a separator between blocks
- 2 consecutive blocks produce a group of same-value bits (so only 1 or 0)
- 1st block defines if the group contains 1 or 0 (0 for 0, 00 for 1)
- 2nd block defines the amount of bits in the group (0 => 1 character, 00 => 2 characters, etc...)

Here is an example with a message composed of a single character: uppercase C.\
C in binary is 1000011. With the Chuck Norris encoding, it gives `0 0 00 0000 0 00`

- `0 0` (first group containing a single 1)
- `00 0000` (second group containing four 0)
- `0 00` (third group containing two 1)

Second exemple, let's encoede CC.
CC in binary is 10000111000011.\
Which encoded gives `0 0 00 0000 0 000 00 0000 0 00`

- `0 0` (a single 1)
- `00 0000` (four 0)
- `0 000` (three 1)
- `00 0000` (four 0)
- `0 00` (two 1)

Try to write a program that will take an ASCII message as input, and print a Chuck Norris encoded message.

Good luck!

[crest]: https://cdn2.chronogolf.com/assets/logos/Github%20-%20Header.png
