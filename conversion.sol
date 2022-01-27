//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;


// The uint data type is an unsigned integer, meaning its value must be non-negative
// There's also an int data type for signed integers

//Note: In Solidity, uint is actually an alias for uint256, a 256-bit unsigned integer.
//You can declare uints with less bits - uint8, uint16, uint32, etc...
//In general you simply want to ue uint except in specific cases

contract learnConversions {

//What's an unsigned int:
//  uint defaults uint256
//  min value of 0
//  max value of 2^256-1  = 1.15792089×10^77
  uint number;

//Conversion to smaller type costs higher order bits.
  uint32 a = 0x12345678;
  uint16 b = uint16(a); // b = 0x5678

//Conversion to higher type adds padding bits to the left
  uint16 c = 0x1234;
  uint32 d = uint32(c); // d = 0x00001234 | 4 bits were added

// What is the cost?
  bytes2 e = 0x1234;
//Conversion to smaller type costs higher order data
  bytes1 f = bytes1(e); // f = 0x12

//What does this add?
  bytes2 g = 0x1234;
////Conversion to higher type adds padding bits to the right
  bytes4 h = bytes4(g); // h = 0x12340000
}
