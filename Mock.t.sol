// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockERC20 {
    mapping(address => uint256) public balanceOf;

    function mint(address to, uint256 amount) external {
        balanceOf[to] += amount;
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Not enough balance");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        return true;
    }

    // Auditor can add custom malicious behavior
    function transferMalicious(address to, uint256 amount) external returns (bool) {
        // Always fails to simulate ERC20 bug
        return false;
    }
}
