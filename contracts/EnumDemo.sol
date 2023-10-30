// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EnumDemo {
    enum user {allowed, notAllowed, wait}
    user public u1=user.wait;
    uint public lottery=1000;

    function check() public {
        if(u1 == user.allowed) {
            lottery = 0;
        }
    }

    function changeOwner() public {
        u1 = user.allowed;
    }
}