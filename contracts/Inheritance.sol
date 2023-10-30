// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Parent {
    string public name;
    address public manager;

    constructor() {
        name = "Hello, World";
        manager = msg.sender;
    }

    function setter(string memory _name) public {
        name = _name;
    }
}

contract Child is Parent {
    uint public x;
}

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    //override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}
contract C is A {
     //override A.foo()
     function foo() public pure virtual override returns (string memory) {
        return "C";
     }

}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override (B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Inheritance must be ordered from “most base-like” to “most derived”.
// Swapping the order of A and B will throw a compilation error.
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}