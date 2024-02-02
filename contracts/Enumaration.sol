// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Enum1 {
    enum freshjuice {
        small,
        medium,
        large
    }
    freshjuice choice;
    freshjuice constant defaultchoice = freshjuice.medium;

    function setlarge() public {
        choice = freshjuice.large;
    }

    function setsmall() public {
        choice = freshjuice.small;
    }

    function getchoice() public view returns (freshjuice) {
        return choice;
    }

    function getdefault() public view returns (uint256) {
        return uint256(defaultchoice);
    }
}
