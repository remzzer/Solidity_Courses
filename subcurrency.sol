//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//The contract allows only its creator to create new coins (diffent issuance are possible)
//Anyone can send coins to each other without a need for registering with a username and password,all you need is an Ethereum keypair.

contract Coin {

    address public minter;
    mapping(address => uint) public balances;

    //only runs when we deploy contract
    constructor() {
        minter = msg.sender;
    }
}
