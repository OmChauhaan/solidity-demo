// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface Parent {
    function setter(string memory _name) external;
}

contract Chils is Parent {

    function setter(string memory _name) public override {
        
    }

}