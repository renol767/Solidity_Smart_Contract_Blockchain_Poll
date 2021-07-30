/// Memberitahu Complier bahwa kita mamakai bahasa pemograman solidity 0.6.6
pragma solidity ^0.6.6;

contract MyContract {
    uint256 public myNumber;
    
    constructor() public {
        myNumber = 5;
    }
    
    function setNumber(uint256 _num) public {
        myNumber = _num;
    }
    
    // ini fungsi saya command karena ada cara lebih mudah yaitu menambahkan public ke variable
    // function getNumber() view public returns (uint256){
    //     return myNumber;
    // }
}