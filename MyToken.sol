// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.3/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
    // Mint 100 tokens to msg.sender
    // Similar to how
    // 1 dollar = 100 cents
    // 1 token = 1 * (10 ** decimals)
    _mint(msg.sender, 99999999 * 10**uint(decimals()));
    }
    function burn(address account, uint256 amount) public virtual returns (bool) {
    _burn(account, amount * 10**uint(decimals()));
    return true;
}
}
