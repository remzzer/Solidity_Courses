// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Fallback executed when:
- function does not exist
- directly send ETH

fallback() or receive()?

    Ether is sent to contract
                |
        is msg.data empty?
            |       |
            Yes     No
            |       |
receive() exists?   fallback()
        |       |
        yes     No
        |       |
    receive()   fallback()
*/

contract Fallback {
    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}
