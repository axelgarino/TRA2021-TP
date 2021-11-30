// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

contract Adoption {
    address[16] public adopters; //address es la direccion de la wallet

    function adopt(uint petId) public returns(uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender; //msg.sender es quien envia el mensaje
        return petId;
    }

    function getAdopters() public view returns(address[16] memory){ 
        return adopters;
    }

    function getAdopterOf(uint petId) public view returns (address) { //te devuelve el address que adopto esa mascota
        return adopters[petId];
    }

}
