pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    // Adopting a pet
    // We are checking to make sure petId is in range of our adopters array. Arrays in Solidity are indexed from 0, 
    //so the ID value will need to be between 0 and 15. We use the require() statement to ensure the ID is within range.
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }

}