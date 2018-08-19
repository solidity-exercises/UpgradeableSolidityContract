pragma solidity 0.4.24;


interface ISharedStorage {
    function contractImplementation() external view returns (address);
}