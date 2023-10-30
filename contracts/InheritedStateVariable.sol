// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A {
    string public name = "Contract A";
    function getName() public view returns(string memory) {
        return name;
    }
}

//shadowing is disallowed in Solidity 0.6
//This will not compile
// contract B is A {
//     string public name = "Contract B";
// }


contract C is A {
    //This is the correct way to override inheritence state variables.
    constructor() {
        name = "Contract C";
    }

   // C.getName returns "Contract C"
}