// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.6.0;

contract Virement {

  mapping (address => uint) balances;

  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  

  constructor() public {
      balances[tx.origin] = 10000;
  }
  
  function sendCoin(address receiver, address from, uint amount) public returns(bool sufficient) {
      emit Transfer(from, receiver, amount*1000000000000000000);
      return true;
  }
  
}
