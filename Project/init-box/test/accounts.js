/**Test cases for Ethereum Accounts Contract.*/
'use strict';

const Accounts = artifacts.require('../contracts/Accounts.sol');
contract('Accounts', function (accounts) {
    let instance;
    let creator;
    let users = [];

    before(async function () {
        // Instantiate the Accounts Contract
        instance = await Accounts.new();
        creator = accounts[0];
        users[0] = accounts[1];
        users[1] = accounts[2];
        users[2] = accounts[3];
    });

    describe("User", function() {
        it("should create a user 1", async function(){
          await instance.createUser('user1', {from  : users[0]});
        })

        it("should create a user 2", async function(){
          await instance.createUser('user2', {from  : users[1]});
        })

        it("user1 should exists", async function() {
            let name = await instance.getUserDetails(users[0]);
            assert.equal(name, 'user1');
        })

        it("user2 should exists", async function() {
          let  name = await instance.getUserDetails(users[1]);
          assert.equal(name, 'user2');
        })

        it("user2 should NOT exists", async function() {          
          try{
            await instance.getUserDetails(users[2])
            assert.fail();
          }catch(err){}
        })
    })
  })
