// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
INTERFACES

Why using Interfaces? It allows you to interact with an other contract
without copy/paste the whole code source.

Interfaces are similar to abstract contracts and are created using interface keyword.
Following are the key characteristics of an interface.

    1.Interface can not have any function with implementation.
    2.Functions of an interface can be only of type external.
    3.Interface can not have state variables.
    4.Interface can have enum, structs which can be accessed using interface name dot notation.
*/

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

//Call Counter contract
interface ICounter {
    //All functions declared in interfaces are implicitly virtual (they can be overridden)
    function count() external view returns(uint);
    function increment() external;
}

contract CallInterface {
    function incrementcounter(address _counter) external {
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}

/*
Exercise Interfaces with Uniswap
You are going to us the IDE to speak to Uniswap and get the reserves of a Uniswap pair of your choosing.

1. Create two interfaces which each hold separate function signatures (look up in solidity docs V2)
2. One interface will be called UniswapV2Factory which will contain the function signature that gets pairs.
3. Another interface, UniswapV2Pair will contain the function signature to get reserve values.
4. Create a contract which contains addresses of the paired tokens you choose as well as the factory address.
5. Within the contract make a function which can get the pair of your tokens and set it to a single address.
6. Use that address to get the reserve values and return it
*/

interface IUniswapV2Factory {
    //Factory address: 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IUniswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract Uniswaping {
    function getToken(address _address){
        address pair = IUniswapV2Factory(_address).getPair();
        (reserve0, reserve1, ) = IUniswapV2Pair(pair).getReserves;
        return (reserve0, reserve1);
    }
}
