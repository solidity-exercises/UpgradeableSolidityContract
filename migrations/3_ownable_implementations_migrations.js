var OwnableImplementation = artifacts.require("./OwnableImplementation.sol");
var OwnableImplementation2 = artifacts.require("./OwnableImplementation2.sol");
var TestProxy = artifacts.require("../contracts/Upgradeability/UpgradeableProxy.sol");

module.exports = async function (deployer) {
    await deployer.deploy(OwnableImplementation);
    let OwnableImplementationInstance = await OwnableImplementation.deployed();
    await deployer.deploy(OwnableImplementation2);
    await deployer.deploy(TestProxy, OwnableImplementationInstance.address);
};