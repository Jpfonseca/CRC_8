# ACA_CRC
This Project was implemented in the  [Advanced Computer Architecture](http://www.ua.pt/deti/uc/2225) course, lectured at [Aveiro University](https://www.ua.pt) .

## CRC-8
The CRC-Cyclic Redundancy Check is a algorithm, which permits to check if the data of a file, sent over a error-introducing channel, has been corrupted. 
In order to the receiver be able to check whether a file was corrupted or not , the sender must create a value(checksum) and append it to the message.This checksum value, must be obtained by running a function known by the sender and the receiver.

When the message is sent, the receiver removes the checksum value  and uses the function to check whether the checksum value obtained is the same as the one created by the message received. If they are different there has been a error on the message transmission.

Example:

|        Sender         |        Receiver         |
| --------------------- |:-----------------------:|
| msg-> 00 12           | msg-> 00 12             |
| sent_msg-> 00 12 03   | received_msg-> 00 12 15 |
| original_checksum->03 | received_checksum->15   |


As the checksum values are different there has been a transmission error.

## Assignment

Design a digital circuit, called the encoder, which computes the check string, CRC-8 based,associated with a 16 bit data word. Design also a digital circuit,called the checker, which asserts the correction of the 24 bit CRC-8 coded word.

The assignment entails that some investigation should be made on finding the best possible algorithms for the implementation of the operations.

## Solution



