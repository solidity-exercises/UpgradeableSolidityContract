pragma solidity 0.4.24;


interface IUpgradeableImplementation {
    function upgradeImplementation(address _newImplementation) external;
}