// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

abstract contract  Parent {
    string public name;
    address public manager;

    constructor() {
        name = "Hello, World";
        manager = msg.sender;
    }

    function setter(string memory _name) public virtual;
}

contract Child is Parent {
    uint public x;

    function setter(string memory _name) public override {
        name = _name;
    }
}
/*
abstract contract Child is Parent {
    uint public x;
}
*/