//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//Ether Units

contract learnEtherUnits {
  function test() pure public {
    //check if what's inside is true if false break (revert transaction)
    assert(1000000000000000000 wei == 1 ether); // 10^18 wei = 1 eth
    assert(1 wei == 1); // //Output = true
    assert(1 ether == 1e18); //Output = true
    assert(2000000000000000000 wei == 2 ether); //Output = true
  }

  function exercise() pure public {
    assert(1 minutes == 60 seconds);
    assert(1 hours == 60 minutes);
    assert(1 days == 24 hours);
    assert(1 weeks == 7 days);
  }
}

//Similar to currency, SOlidity has time units where lowest unit is second and we can use seconds,
//minutes hours, days, weeks as suffix to denote time.

//Excercise - Create the following assertions in a function called exercise:
// Assert equivalencies for minutes to seconds, hours to minutes, days to hours, and weeks to days
