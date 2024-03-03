// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "hardhat/console.sol";

contract AssertionExample {
    uint public age;
    function setAgeLimit(uint _age) public{
        age=_age;
    }

    function requireExample() public view  {
        require(age >= 18, "NOT ELIGIBLE FOR VOTE");
        console.log("YOU ARE ELIGIBLE FOR VOTE");
    }
    
    function assertExample() public view {
        assert(age >=18);
        console.log("YOU ARE ELIGIBLE FOR VOTE");
    }
    
    function revertExample() public view {
        if (age<=18) {
            revert("YOU ARE NOT ELIGIBLE FOR VOTE");
        }
        else{
            console.log("YOU ARE ELIGIBLE FOR VOTE");
        }
    }
}
