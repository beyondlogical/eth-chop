pragma solidity ^0.5.0 ;

contract Chop {
    
    mapping (address => bool) public chopHolders;
    uint public chopHoldersCount;
    
    constructor() public {
        chopHolders[msg.sender] = true;
    }
    
    function grantChop(address _newChopHolder) public chopHoldersOnly {
        chopHolders[ _newChopHolder ] = true;
    }

    // naive for now
    function revokeChop(address _formerChopHolder) public chopHoldersOnly {
        delete chopHolders[ _formerChopHolder ];
    }
 
    function isChopHolder(address _addressToCheck) public view returns(bool) {
        return chopHolders[ _addressToCheck ];
    }
 
    modifier chopHoldersOnly () {
        require(isChopHolder(msg.sender));
        _;
    }  
    

}
