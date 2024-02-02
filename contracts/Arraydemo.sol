// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Arraydemo {
    // uint[4] fixednums;  // here we can create an static array by using the "Fixed" keyword in solidity.
    //     function staticarray() public view returns (uint[4] memory)
    // {
    //     return fixednums;
    // }

    uint256[] nums = [45, 99, 55, 66, 77]; // this an an Dynamic array created.

    function dynamicarray() public view returns (uint256[] memory) {
        //In Solidity, the "memory keyword" is used to declare a data location for variables within a function. Solidity supports three data locations for variables: storage, memory, and stack.
        return nums;
    }

    function arraylength() public view returns (uint256) {
        return nums.length;
    }

    function adddnumber(uint256 num) public {
        nums.push(num);
    }

    function removenumber() public {
        nums.pop();
    }

    function removeatindex(uint256 index) public {
        delete nums[index];
    }
}
