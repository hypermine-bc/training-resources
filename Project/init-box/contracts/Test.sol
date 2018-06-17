pragma solidity  ^0.4.2;

contract Test{

    uint8 val;
    function setValue(uint8 value) public {
        val = value;
    }

    function getValue() public view returns (uint8 value){
        value = val;
    }
}