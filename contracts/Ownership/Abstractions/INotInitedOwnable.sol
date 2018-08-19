pragma solidity 0.4.24;


interface INotInitedOwnable {
    function owner() external view returns (address);

    function init() external;

    function transferOwnership(address newOwner) external;
}