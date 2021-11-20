pragma solidity ^0.5.9;

contract Test {

  event Transfer(address indexed _from, address indexed _to, uint256 _value);

    function sell(address payable transferTo)
      public
      payable // make function payable
    {
      // change the amount to the amount sent with the call (msg.value)          
      emit Transfer(msg.sender, transferTo, msg.value);
      transferTo.transfer(msg.value);
    }
}