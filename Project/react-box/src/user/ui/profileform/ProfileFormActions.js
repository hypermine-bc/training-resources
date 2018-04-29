import AuthenticationContract from '../../../../build/contracts/Accounts.json'
import store from '../../../store'

const contract = require('truffle-contract')

export const USER_UPDATED = 'USER_UPDATED'
function userUpdated(user) {
  return {
    type: USER_UPDATED,
    payload: user
  }
}

export function updateUser(name) {
  //TODO : Call update method of Accounts contract using web3.
}
