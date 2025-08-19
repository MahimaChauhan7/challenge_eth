# ForceAttack 💣

This smart contract demonstrates how to forcefully send ETH to another contract address using the `selfdestruct` function in Solidity.




## ⚡ How It Works

1. Deploy the `ForceAttack` contract and **send some ETH** along with the deployment.
2. Call the `destroy()` function with the **target contract’s address**.
3. `selfdestruct` will:

   * Destroy the `ForceAttack` contract.
   * Force all ETH inside it to be sent to the target address — even if the target has no `receive()` or `fallback()` function.



## 🔑 Key Concepts

* **`address` vs `address payable`**

  * `address` → only holds an Ethereum address.
  * `address payable` → can receive ETH via `.transfer()`, `.send()`, or `selfdestruct`.
* **`selfdestruct`**

  * Permanently removes a contract from the blockchain.
  * Sends all ETH from the contract to a given payable address.
* **Forcing ETH**

  * Even if a contract is not designed to accept ETH, `selfdestruct` bypasses this restriction.





