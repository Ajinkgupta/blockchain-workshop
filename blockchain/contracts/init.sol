// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Init {
    // states
    uint counter;

    // functions
    // getter fn
    function get_counter() public view returns (uint) {
        return counter;
    }

    // setter fn
    function set_counter() public {
        counter = counter + 1;
    }
}
