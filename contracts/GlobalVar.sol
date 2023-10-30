// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract GlobalVar {
    function get() public view returns(uint blockNo, uint gasLimit, uint timestamp, address caller) {
        return (block.number, block.gaslimit, block.timestamp, msg.sender);
    }
} 