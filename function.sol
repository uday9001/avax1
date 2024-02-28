// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract ErrorHandling {
    uint public balance = 0;

    function depositRequire(uint _amount) public {
        // Check if the deposit amount is greater than zero.
        require(_amount > 0, "Deposit amount must be greater than zero");
        balance += _amount;
    }

    function withdrawRequire(uint _amount) public {
        // Check if the withdrawal amount is greater than zero.
        require(_amount > 0, "Withdrawal amount must be greater than zero");

        require(_amount <= balance, "Insufficient balance");

        balance -= _amount;
    }

    function divideRequire(uint _numerator, uint _denominator) public pure returns (uint) {
        // Check if the denominator is not zero.
        require(_denominator != 0, "Cannot divide by zero");

        return _numerator / _denominator;
    }

    // Function to demonstrate the use of assert statements
    function assertFunction() public pure {
        uint result = divideRequire(10, 2);

        assert(result == 6);
    }

    // Function to demonstrate the use of revert statements
    function revertFunction() public pure {
        // Divide 10 by 2, which will give a result of 5.
        uint result = divideRequire(10, 2);
          if(result == 5){
            revert("This function always reverts");
        }
    }
}
