// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LoopDemo {
    uint[] public arr=[1,2,3,4,5];
    uint public sum;

    function whileLoop() public {
        uint count;
        while(count < arr.length){
            sum=sum+arr[count];
            count++;
        }
    }

    function forLoop() public {
        for(uint count=0; count<arr.length;count++) {
            sum=sum+arr[count];
        }
    }

    function doWhileLoop() public {
        uint count=0;
        do {
            sum+=arr[count];
            count++;
        } 
        while (count<arr.length);
    }
}