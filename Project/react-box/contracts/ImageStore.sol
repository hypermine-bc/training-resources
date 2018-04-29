pragma solidity  ^0.4.2;

import './Accounts.sol';
import { Lib } from "./library/Lib.sol";

contract ImageStore is Accounts {
    
    mapping(string => Lib.Image) imageList;
    
    function addImage(string _imageId, string _imageName) public
        {
            //user should exist
            require(userList[msg.sender].exists);
            
            //media should not exists
            require(!imageList[_imageId].exists);
                
            //add media to the list
            imageList[_imageId] = Lib.Image ({
               exists : true,
               name : _imageName,
               creator : msg.sender,
               likesCount : 0,
               dislikesCount : 0
            });
        }
     
    function getImageDet(string _imageId) public 
        view
        returns(string name, address creator, uint32 likesCount, uint32 dislikesCount)
        {
            //implement this functionality
            
            //check if image exists
            require(imageList[_imageId].exists);
            
            name = imageList[_imageId].name;
            creator = imageList[_imageId].creator;
            likesCount = imageList[_imageId].likesCount;
            dislikesCount = imageList[_imageId].dislikesCount;
            
        } 

    function likeImage(string _imageId, uint32 _likeCnt) public 
        {
            //user should exist
            require(userList[msg.sender].exists);

            //check if image exists
            require(imageList[_imageId].exists);
            imageList[_imageId].likesCount = imageList[_imageId].likesCount + _likeCnt;
        }

    function dislikeImage(string _imageId) public 
        {
            //user should exist
            require(userList[msg.sender].exists);
            
            //check if image exists
            require(imageList[_imageId].exists);
            imageList[_imageId].dislikesCount = imageList[_imageId].dislikesCount - 1;
        }
}