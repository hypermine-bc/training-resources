var Accounts = artifacts.require("./Accounts.sol");
var ImageStore = artifacts.require("./ImageStore.sol");

////http://truffleframework.com/docs/getting_started/migrations
module.exports = function(deployer) {
  deployer.deploy(Accounts);
  //deployer.link(Accounts, ImageStore);
  deployer.deploy(ImageStore);
};
