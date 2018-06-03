pragma solidity ^0.4.2;

contract Test {
  uint32 val;
  uint32 public pubVal;
  
  event setValEvnt(uint _val);
  
  function setValue(uint32 _val) public{
      val = _val;
      pubVal = _val;
    setValEvnt(_val);
  }

  function getValue() public view returns(uint32){
      return val;
  }
}
