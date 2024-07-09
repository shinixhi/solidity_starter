// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint public myNumber;

    constructor() {
        myNumber = 0;
    }

    function setNumber(uint _num) public {
        require(_num > 0, "Number must be greater than zero");
        myNumber = _num;
    }

    function assertExample(uint _num) public view returns (bool) {
        assert(_num != 0);
        return true;
    }

    function revertExample(uint _num) public pure {
        if (_num == 0) {
            revert("Number cannot be zero");
        }
    }
}
