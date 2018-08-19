pragma solidity 0.4.24;

import "./OwnableImplementation.sol";


contract OwnableImplementation2 is OwnableImplementation {
    function getRate() public pure returns (uint) {
        return 2000;
    }
}