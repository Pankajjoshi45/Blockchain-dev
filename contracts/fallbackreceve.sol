//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract fallbackReceve {
    string public called = "";
    uint256 public amount = 0;
    bytes public data;

//receve is basically use for receve amount from other contract or somebody send the the money to the owner.
    receive() external payable {
        called = "receve";
        amount = msg.value;
    }

//if the sending time the receve function is not matched to the sender then the fallback can automatically excuted.
    fallback() external payable {
        called = "fallback";
        amount = msg.value;
        data = msg.data;
    }
}
