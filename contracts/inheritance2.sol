// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract multiple_inheriance_p1 {
    function show() public virtual pure returns (string memory) {
        return "In p1 show";
    }
}

contract p2 {
    function show() public virtual pure returns (string memory) {
        return "In p2 show";
    }
}

contract child is multiple_inheriance_p1,p2{
    function show() public override(multiple_inheriance_p1,p2) pure returns (string memory){
        return super.show();
        // here when we use the super keyword to return th value. so that in solidity the multiple inheritance is goes from right to left so thats why first p2 is printed as o/p.
    }
}