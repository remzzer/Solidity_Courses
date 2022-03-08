// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract LearnEvents {

  // 1. Declare the event
  // 2. emit the event

  //only use 3 indexed per event
  event NewTrade(
      uint indexed date,
      address from,
      address indexed to,
      uint indexed amount
  );

  function trade(address to, uint amount) external {
      //outside consumer can see the event through web3js
      //block.timestamp is a global variable
      emit NewTrade(block.timestamp, msg.sender, to, amount);

  }
}
