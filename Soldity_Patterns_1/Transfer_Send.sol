// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Instead of using "transfer" which reverts the code we can use "send" which returns a bool

1. Write a function so only the owner can send Tatianna funds with the send method
with logic to set up what happens if the amount is not sent.

2. Write another function to claim refunds:
Write a function called claimRefund which requires
that the balance of msg.sender greater than 0 and transfer the balance to the current caller.
Pseudo balance var named balance
*/

contract A {

   address owner;

   //Retrieve amount of ETH by addresses
   mapping(address => uint) public balance;

    //Set owner (Here -> wallet that deploy contract)
    constructor (address _owner) {
        owner = _owner;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function getOwner() public view returns (address){
        return owner;
    }

    //Send ETH to Tatianna
    function sendTo(address payable _to) public payable onlyOwner {
        balance[_to] += msg.value;
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    //Tatianna can withdraw ETH
    function claimRefund() external payable {
        require(balance[msg.sender] > 0, "Not enough ETH");
        balance[msg.sender] -= msg.value;
        (bool sent, ) = msg.sender.call{value: balance[msg.sender]}("");
        require(sent, "Failed to send Ether");
    }
}
