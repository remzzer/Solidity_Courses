//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//Ether Units

contract learnEtherUnits() public {
  function test() public {
    //check if what's inside is true
    assert(1000000000000000000 wei == 1 ether); // 10^18 wei = 1 eth
    assert(1 wei == 1); // //Output = true
    asser(1 ether == 1e18); //Output = true
    assert(2000000000000000000 wei == 2 ether); //Output = true
  }
}
