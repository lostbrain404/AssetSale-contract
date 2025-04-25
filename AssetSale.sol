// SPDX-License-Identifier: MIT 
pragma solidity 0.8.24;

contract AssetSale {

    address public assetOwner ;
    uint256 public assetPrice ;
    bool IsSold ;

    constructor(uint Price){
        assetOwner = msg.sender ;
        assetPrice = Price ;
        IsSold = false ;
    }

    function buy()public payable{
        require(!IsSold, "Asset Already sold!");
        require(msg.value>=assetPrice,"Insufficient Balance"); 
        IsSold = true ;
        assetOwner = msg.sender;
    }
}
