pragma solidity 0.4.24;

import "../../contracts/Upgradeability/OwnableUpgradeableImplementation.sol";


contract OwnableImplementation is OwnableUpgradeableImplementation {

    uint public rate;

    function rate() public view returns (uint) {
        return rate;
    }

    function setRate(uint r) public {
        rate = r;
    }

    function getRate() public pure returns (uint) {
        return 1000;
    }
}