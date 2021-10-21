const Migrations = artifacts.require("Migrations");
const TestERC20 = artifacts.require("TestERC20");

module.exports = function (deployer) {
  // deployer.deploy(Migrations);
  deployer.deploy(TestERC20, "UT Coin", "hookEm");
};
