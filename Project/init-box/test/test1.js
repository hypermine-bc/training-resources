'use strict'
const Test1 = artifacts.require('../contracts/Test1.sol');

contract('Test1', function(accounts){
    let instance 
    before(async function(){
        instance = await Test1.new()
    })

    describe('Module 01', function(){
        it('it should set a value', async function(){
            await instance.setValue(12, {
                from: accounts[0]
            })
        })

        it('it should return the value', async function(){
            let value = await instance.getValue({
                from: accounts[0]
            })
            assert.equal(value, 12)
        })
    })
})
