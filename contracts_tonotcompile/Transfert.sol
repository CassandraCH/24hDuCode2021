// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.6.0;

contract Transfert {

  mapping (address => uint) balances;

  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  

  constructor() public {
      balances[tx.origin] = 10000;
  }
  
  function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
      if (balances[msg.sender] < amount) return false;
      balances[msg.sender] -= amount;
      balances[receiver] += amount;
      emit Transfer(msg.sender, receiver, amount*1000000000000000000);
      return true;
  }
  
  function multiplyAmount(uint amount, uint multiplier) public returns(uint) {
      return amount * multiplier;
  }

  function getBalanceInEth(address addr) public view returns(uint){
      return getBalance(addr)*2;
  }

  function getBalance(address addr) public view returns(uint) {
      return balances[addr];
  }
  
}
