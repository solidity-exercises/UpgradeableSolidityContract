pragma solidity 0.4.24;

import "../../../contracts/Upgradeability/Abstractions/ISharedStorage.sol";
import "../../../contracts/Ownership/Abstractions/INotInitedOwnable.sol";
import "./IImplementation.sol";

contract IOwnableImplementation is ISharedStorage, INotInitedOwnable, IImplementation {}