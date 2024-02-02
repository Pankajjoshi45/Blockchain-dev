// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Counter {
    uint public count;   // Static variable

    function get() public view returns (uint) {
        return count;
    }

    function increment() public {
        count++;
    }

    function decrement() public {
        count--;
    }
}
