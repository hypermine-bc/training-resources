# Decentralize media app

## Assignment

### Implement Update User functionality

* Implement ``updateUser()`` method in [Accounts.sol](https://github.com/hypermine-bc/training-labs/blob/master/Project/react-box/contracts/Accounts.sol)
* Implement ``updateUser()`` method in [ProfileFormActions.js](https://github.com/hypermine-bc/training-labs/blob/master/Project/react-box/src/user/ui/profileform/ProfileFormActions.js) and connect to the contract method using web3.

### Implement Image Upload page

* ``addImage()`` is already implemented in [ImageStore.sol](https://github.com/hypermine-bc/training-labs/blob/master/Project/react-box/contracts/Migrations.sol)
* Create a component called, 'Upload' in the project. Add some simple UI with 'upload' button.
* On clicking on the 'upload' button, you have to do following steps
  * Install and run ipfs daemon.
  * Call a method in js file which will upload the file to ipfs and get the hash of the file.
  * Now call ``addImage(imageId, imageName)`` of contract using web3 to store the image details to blockchain. You have to pass ipfs hash as imageId and name of the image as imageName in the parameter.
  
### Implement Image List page 

This page will be the first page or the home page that will come once the user is logged in.

* Implement ``getAllImageIds()`` method in [ImageStore.sol](https://github.com/hypermine-bc/training-labs/blob/master/Project/react-box/contracts/Migrations.sol) to fetch list of imageIds present in imageList map.

### Implement View Image page

When user click on an image in the Image List page, he should be redirected to another page called, Image View page. Pass the imageId from Image List to this page to fetch details of this image.

* ``getImageDet(_imageId)`` is already implemented in the contract.
* Call this method using web3 to get details(like, name, like, dislike etc.) of this image.
* ``getImageDet(_imageId)`` and ``dislikeImage(string _imageId)`` are already implemented in the contract.
* You have to integrate these methods to the UI using web3.

Note* : If you want, you can also use metamask with this project. 

# Congrats! You have successfully completed the project


