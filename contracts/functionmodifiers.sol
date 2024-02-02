//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract account {
    mapping(address => uint256) balance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addbalance(uint256 amt) public {
        require(msg.sender == owner, "stay in your limit");

        // uint256 a = 6;
        // uint256 b = 7;
        // uint256 c = a + b;
        // assert(c == 13);
        // the assert is use for internal checking in solidity.

        balance[msg.sender] += amt; //+ c;
    }

    function getbalance() public view returns (uint256) {
        return balance[msg.sender];
    }

    function transferbalance(address to, uint256 ammount) public {
        if (balance[msg.sender] < ammount)
            revert("you don't have enough balance to transfer");
        // revert is use for rollback the transfe if it is not completed.

        require(balance[msg.sender] > ammount, "insufficient balance");

        balance[msg.sender] -= ammount;
        balance[to] += ammount;
    }
}
