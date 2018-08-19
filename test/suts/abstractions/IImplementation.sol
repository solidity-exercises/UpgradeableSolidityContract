pragma solidity 0.4.24;

import "../../../contracts/Upgradeability/Abstractions/ISharedStorage.sol";
import "../../../contracts/Upgradeability/Abstractions/IUpgradeableImplementation.sol";


contract IImplementation is ISharedStorage, IUpgradeableImplementation {
    function rate() public view returns (uint);

    function setRate(uint r) public;

    function getRate() public pure returns (uint);
}