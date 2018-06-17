pragma solidity  ^0.4.2;
import { Lib } from "./library/Lib.sol";

contract Accounts{

    mapping (address => Lib.User) userList;
    
    function createUser(string _username) public
        {
            //user should not exist
            require(!userList[msg.sender].exists);
            
            //add user to the list
            userList[msg.sender] = Lib.User({
                exists : true,
                name : _username
            });
        }
    
    function getUserDetails(address _userAddr) public 
        view 
        returns(bool isExists, string name)
        {
            isExists = userList[_userAddr].exists;
            if(isExists)
                name = userList[_userAddr].name;
            else
                name = "";
        }

    //TODO : Implement updateUser() method here
}