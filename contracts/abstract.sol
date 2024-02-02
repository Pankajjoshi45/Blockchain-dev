//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

abstract contract calcfunction {
    //we can use the abstract keyword for creating a abstract contract in solidity.
    function op() public view virtual returns (uint256) {
        // here abatract function is created.abstract is only declared we can't deploy the abstract function in solidity.
        //an abstract function is like a placeholder in a blueprint for a contract.It's a function that is mentioned in the blueprint but doesn't have any specific instructions on what it should do. The contract that uses this blueprint must provide the actual instructions for that function.
    }
}

//we can inherit the abstract function in solidity using inheritance.
contract add is calcfunction {
    uint256 public num1 = 20;
    uint256 public num2 = 30;

    function op() public view override returns (uint256) {
        return num1 + num2;
    }
}
