//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//Special variables (global variables) are globally available variables and provides information about the blockchain.
//msg.sender: Sender of the message (current call), msg.value (uint): Number of wei sent with the message.
//block.timestamp: Current block timestamp as seconds since unix epoch, block.number (uint): current block number

contract LedgerBalance {
    //create a map of wallets with amounts
    mapping(address => uint) balance;
    //set up a function that can update the amount of the person calling the contract
    function updateAmount(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}

// Create a new contract called Updated
// Create a public function called updatesBalance
// Instantiate the data type contract LedgerBalance to a new variable called ledgerbalance (similar to struct or enum).
// Set the new variable ledgerbalance = new LedgerBalance();
// Update the ledgerbalance to 30

contract Updated {

    function updatesBalance() public {
        LedgerBalance ledgerbalance = new LedgerBalance();
        ledgerbalance.updateAmount(30);
    }

}
