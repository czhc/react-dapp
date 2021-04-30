pragma solidity ^0.8.3;

import "hardhat/console.sol";

contract Token {
  string public name = "Fool's Token";
  string public symbol = "FOOL";
  uint public totalSupply = 5000000;
  mapping(address => uint) balances;

  constructor() {
    balances[msg.sender] = totalSupply;
  }

  function transfer(address to, uint amount) external {
    require(balances[msg.sender] >= amount, "Not enough tokens");
    balances[msg.sender] -= amount;
    balances[to] += amount;
  }

  function balanceOf(address account) external view returns (uint) {
    console.log("DEBUG2 account", account);
    return balances[account];
  }
}