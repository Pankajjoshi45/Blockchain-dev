//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Function {
    function returnNamed()
        public
        pure
        returns (
            uint256 x,
            bool b,
            int256 y
        )
    {
        return (1, true, -5);
    }

    function AssignValues()
        public
        pure
        returns (
            uint256 x,
            bool b,
            int256 y
        )
    {
        return (x, b, y);
    }

    function destructuring()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMultiple();
        i = 300;
        (uint256 x, uint256 m, uint256 y) = (10, 15, 20);

        return (i, b, j, m);
    }

    //function to return multiple values
    function returnMultiple()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (5, false, 10);
    }
}

contract SecondFunction {
    function SecondFunctionContract(address a, bool b)
        public
        pure
        returns (address, bool)
    {
        return (a, b);
    }

    function callFunction() external view returns (address, bool) {
        return SecondFunctionContract(address(0), true);
    }

    //In Solidity, address(0) represents the Ethereum address with all zeros. This address is commonly used to indicate an unspecified or null address. It's similar to the concept of null or undefined in other programming languages.
    //In simple terms, using address(0) is a way to initialize or check for an empty or non-existent address in Solidity smart contracts. It can be used to represent a default or unset state for an Ethereum address variable.

    function callFunctionWithKeyValue() external pure returns (address, bool) {
        return SecondFunctionContract({a: address(0), b: true});
    }
}
//msg.sender in Solidity represents the Ethereum address that triggered the current smart contract function or transaction, providing a way to identify the initiator. It is commonly used for access control and authentication.
