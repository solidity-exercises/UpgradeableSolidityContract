pragma solidity 0.4.24;

import './SharedStorage.sol';


contract UpgradeableImplementation is SharedStorage {
    
    event UpgradedContract(address indexed newImplementation);

    function upgradeImplementation(address _newImplementation) public {
        require(_newImplementation != address(0), "_newImplementation can not be 0");
        emit UpgradedContract(_newImplementation);
        contractImplementation = _newImplementation;
    }
}