pragma solidity 0.4.24;

import "./SharedStorage.sol";
import "../Ownership/NotInitedOwnable.sol";
import "./UpgradeableImplementation.sol";


contract OwnableUpgradeableImplementation is SharedStorage, NotInitedOwnable, UpgradeableImplementation {
	function upgradeImplementation(address _newImplementation) public onlyOwner {
		super.upgradeImplementation(_newImplementation);
    }
}