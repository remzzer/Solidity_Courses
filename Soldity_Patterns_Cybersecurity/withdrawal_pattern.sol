// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Cybersecurity In Solidity

withdrawal pattern ensures that direct transfer call is not made which poses a security threat.
Transfers are atomic (meaning all or nothing)

Write an iterating function called returnFunds that will refund through the transfer method investors to a var called funders back to their wallets called contributedAmount.
Add a modifier to the signature that only the owner can execute this function. The function should return a bool success.

Ps: I did the exercise my own way
*/

contract WithdrawPattern  {

    uint contributedAmount;
    mapping(address => uint) public balances;

    //Mapping that helps retrieve msg.sender and his deposit
    function deposit() external payable {
        balances[msg.sender] = msg.value;
        contributedAmount += msg.value;
    }

    //Total deposit by all owners
    function getTotal() public view returns (uint){
        return contributedAmount;
    }

    //Get your funds back
    function returnFunds(uint amount) external payable  {
        require (balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        contributedAmount -= amount;
        (bool sent, ) = msg.sender.call{value: amount}("");
        require(sent, "Fail transaction");
    }
}
