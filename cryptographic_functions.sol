//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
A cryptographic hash function (CHF) is a mathematical algorithm that maps data of arbitrary size (often called the "message")
to a bit array of a fixed size (the "hash value", "hash", or "message digest").
It is a one-way function, that is, a function which is practically infeasible to invert or reverse the computation.

Solidity provids inbuilt cryptographic functions as well. Following are important methods:

Keccak256(bytes memory) returns (bytes32) - computes the Keccak-256 hash of the input.

sha256(bytes memory) returns (bytes32) - computes the SHA-256 hash of the input.

ripemd160(bytes memory) returns (bytes32) - computes te RIPEMD-160 hash of the inpute.

Keccak is a leading hashing function, designed by non-NSA designers. Keccak won NIST competition to become the official SHA3
Keccak is a familly of cryptographic sponge functions and is designed as an alternative to SHA_256
*/

contract GenerateRandomNumber {
    //build a random number generator which takes an input range and uses cryptographic hashing
    // modulo (%)- so by computing against the remainder we will be able to produce a random number within a range
    // cryptographic hashing

    function randRange(uint _range) external view returns(uint) {
        // grab information from the blockchain randomly to generate random number - we nned something dynamically changing
        // abi.encodePacked concatenates arguments nicely
        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % _range;

    }
}
