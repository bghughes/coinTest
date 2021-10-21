// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestERC20 is ERC20 {
    event LogNote(string message);

    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        emit LogNote("We are live!");
    }
}