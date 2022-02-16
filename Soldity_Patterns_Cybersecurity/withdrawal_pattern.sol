// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

/*
Cybersecurity In Solidity

withdrawal pattern ensures that direct transfer call is not made which poses a secuity threat.
Transfers ae atomic (meaning all or nothing)

Write an iterating function called returnFunds that will refund through the transfer method investors to a var called funders back to their wallets called contributedAmount.
Add a modifier to the signature that only the owner can execute this function. The function should return a bool success.
*/

contract WithdrawPattern  {

    address contributedAmount;
    mapping(address => uint) balances;
    uint total;

    function deposit() external returns (uint){
        balances[msg.sender] = msg.value;
        return total += msg.value;
    }

    function returnFunds() public onlyOwner returns (bool){

        /*
        for(let i = 0; i < funders.length; i++){
            funders[i].transfer(contributedAmount);
        }
        */
        balances[msg.sender].transfer
        return true;
    }
}
