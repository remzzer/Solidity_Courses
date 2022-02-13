//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Owner {

}

contract Register is Owner {

  mapping (address => bool) registeredAddresses;
  uint price;

  constructor(uint initialPrice) public {
    price = initialPrice;
  }

  // function register will set msg.sender (current caller) to true
  function register() public payable {
    registeredAddresses[msg.sender] = true;
  }

  function changePrice(uint _price) public onlyOwner {
    price = _price;
  }
}
