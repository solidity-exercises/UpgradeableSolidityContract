var Implementation = artifacts.require("./Implementation.sol");
var Implementation2 = artifacts.require("./Implementation2.sol");
var TestProxy = artifacts.require("../contracts/Upgradeability/UpgradeableProxy.sol");

module.exports = async function (deployer) {
	await deployer.deploy(Implementation);
	await deployer.deploy(Implementation2);
	await deployer.deploy(TestProxy, Implementation.address);
};