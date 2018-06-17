pragma solidity  ^0.4.2;

contract Test1{
    uint8 value;

    function setValue(uint8 val) public {
        value = val;
    }

    function getValue() public view returns(uint8 value1){
        value1 = value;
    }
}