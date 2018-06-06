# Lab for Chapter 04 - 'Smart Contracts development using Solidity'

### Writing and compiling simple smart contact on Remix

* Create a simple contract, **Accounts** for maintaining user accounts.
* Implement features :
  * Declare a struct, **User** with 3 variables, **exists** of type bool, **name** of type string and **age** of type uint8.
  * Delcare a mapping variable, **userList** with key as address of user and value of type User struct.
  * Implement a setter method, **createUser** which will take 2 parameters username of type string and age of type uint8. Make the user object and add this object to the mapping only if the user does not exists in the mapping.
  * Implement another method **getUserDetails**, a getter method, to fetch details of a user providing user's address a parameter. The method should return multiple parameters, like username and age only if user exists in the mapping.
  * Implement a setter method **updateUserDetails** which should take 2 parameter, name of string type and age of type uint8 and should update the user object only if user exists in the mapping. 
  * (Optional) You might want to implement a Modifier **ifUserExists**, to check if the user exists in the mapping or not as you have to do this checking in getUserDetails and updateUserDetails methods.
  * (Optional) If you want, you can also implement an event **userAdded** and emit it from **createUser** method. 
* Compiling contract code. Understanding terms like Metadata, Bytecodes etc. Play around with Remix as much as you can.

### Deploying contracts using Remix

* Deploying **Accounts** contract using different environments on blockchain.
* Understanding gas consumptions.

### Debugging contracts in Remix


**Note** : If you want you can make use of Account.sol contract present in ch04/lab02 folder as a boiler plate.

 
