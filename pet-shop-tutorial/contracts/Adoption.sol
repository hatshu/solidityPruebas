pragma solidity ^0.5.0;
    /// @title Adoption
contract Adoption {
    //public array of adopters
    address[16] public adopters;

    /** @dev Allow to adopt a pet from adopters.
      * @param petId Width of the rectangle.
      * @return petId.
      */
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    /** @dev For know aporters list.
      * @return address[16].
      */
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}