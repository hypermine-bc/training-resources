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
    
    function checkIfUserExist(address _userAddr) public 
        view 
        returns(bool isExists, string name)
        {
            isExists = userList[_userAddr].exists;
            if(isExists)
                name = userList[_userAddr].name;
            else
                name = "";
        }
}