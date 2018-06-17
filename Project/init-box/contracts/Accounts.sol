pragma solidity  ^0.4.2;

contract Accounts{
    
    struct User{
        bool exists;
        string name;
    }
    
    mapping (address => User) userList;
    
    function createUser(string _username) public
        {
            //user should not exist
            require(!userList[msg.sender].exists);
            
            //add user to the list
            userList[msg.sender] = User({
                exists : true,
                name : _username
            });
        }
    
    function getUserDetails(address _userAddr) public 
        view 
        returns(string name)
        {
             //user should exist
            require(userList[_userAddr].exists);        
            name = userList[_userAddr].name;
        }
}