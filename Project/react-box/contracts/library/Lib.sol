pragma solidity  ^0.4.2;

library Lib {
    
    struct User{
        bool exists;
        string name;
    }
    
    struct Image {
        bool exists;
        string name;
        address creator;
        uint32 likesCount;
        uint32 dislikesCount;
    }
}
