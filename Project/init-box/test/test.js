'use strict'
const Test = artifacts.require('../contracts/Test.sol');

contract('Test', function(accounts){
    let instance
    before(async function(){
        instance = await Test.new()
    })

    describe('Value Setting', function(){
        it('should set a value', async function(){
            await instance.setValue(12, {from : accounts[0]})
        })

        it('should get a value', async function(){
            let value = await instance.getValue();
            assert.equal(value , 12)
        })
    })
})