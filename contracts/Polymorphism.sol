// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Parent {
    function sum(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    function sum(uint a, uint b, uint c) public pure returns(uint) {
        return a+b+c;
    }

    function sum(string memory a, string memory b) public pure returns(string memory) {
        b="hello";
        return a;
    }
}