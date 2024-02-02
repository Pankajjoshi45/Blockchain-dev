// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract computer {
    function compute() public pure returns (string memory) {
        return "Computing";
    }

    function show_specification() public pure virtual returns (string memory) {
        return "just a computational machine";
    }
}

contract laptop is computer {
    //In solidity the "Is keyword" is use for implement the inheritance.
    function show_specification() public pure override returns (string memory) {
        return "8gb, 512gb,  i5, 12gen, 12000h";
    }
}

// The virtual keyword is used in the base (parent) contract to indicate that a function can be overridden in a child contract.It allows the child contract to provide its own implementation of that function.
//The override keyword is used in the child contract to indicate that it is intentionally providing a new implementation for a function declared as virtual in the parent contract.It ensures that the function in the child contract is indeed intended to override the function in the parent contract.
