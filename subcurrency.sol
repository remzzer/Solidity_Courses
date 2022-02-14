//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//The contract allows only its creator to create new coins (diffent issuance are possible)
//Anyone can send coins to each other without a need for registering with a username and password,all you need is an Ethereum keypair.

contract Coin {

    address public minter;
    mapping(address => uint) public balances;

    event Sent(address from, address to, uint amount);

    //only runs when we deploy contract
    constructor() {
        minter = msg.sender;
    }

    //make new coins and send them to an address
    // only the owner can send these coins
    function mint(address receiver, uint amount) public {
      require(msg.sender == minter);
      balances[receiver] += amount;
    }

    //send any amount of coins to an exising address

    error insufficientBalance(uint requested, uint available);

    function send(address receiver, uint amount) public {
        //require (amount > balances[msg.sender], "You do not have enough ETH");
        if (amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= amount;
        balances[receiver]  += amount;
    }

}
