// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Joker is ERC20 {
  constructor(uint256 initialSupply) ERC20('Joker', 'joker') {
    _mint(msg.sender, initialSupply * 10 ** uint256(decimals()));
  }

}