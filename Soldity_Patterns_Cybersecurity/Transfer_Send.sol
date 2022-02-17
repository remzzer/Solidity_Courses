// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Instead of using "transfer" which reverts the code we can use "send" which returns a bool

Write a function so only the owner can send Tatianna funds with the send method
with logic to set up what happens if the amount is not sent.
*/

contract A {

   address owner;
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

    function sendTo(address payable _to) public payable onlyOwner {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

}
