// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;

contract itContract {
  string public name = "itJoker";
  string public symbol = "Joker";
  uint8 public decimals = 18;
  uint256 public totalSupply;

  mapping (address => uint256) public balanceOf;

  event Transfer(address indexed from, address indexed to, uint256 value);

  constructor(uint256 _initialSupply) {
    totalSupply = _initialSupply * 10 ** uint256(decimals);
    balanceOf[msg.sender] = totalSupply;
  }

  function transfer(address _to, uint256 _value) public returns(bool success) {
    require(balanceOf[msg.sender] >= _value);
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;

    emit Transfer(msg.sender, _to, _value); 
    return true;
  }
}