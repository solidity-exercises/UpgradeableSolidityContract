pragma solidity 0.4.24;


/**
 * @title Ownable
 * @dev The NotInitedOwnable contract has an owner address, and provides 
 * basic authorization control functions,
 * this simplifies the implementation of "user permissions".
 * @notice This contract needs to be inited after deployment for proper use.
 */
contract NotInitedOwnable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Sender is not an owner");
        _;
    }

    /**
    * @dev Initializes the contract and inits with the msg sender as an owner
    * account.
    */
    function init() public {
        require(owner == address(0), "Contract already has owner");
        owner = msg.sender;
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     * @param _newOwner The address to transfer ownership to.
     */
    function transferOwnership(address _newOwner) public onlyOwner  {
        require(_newOwner != address(0), "_newOwner address can not be 0");
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}