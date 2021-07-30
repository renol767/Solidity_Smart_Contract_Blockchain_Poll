/// Memberitahu Complier bahwa kita mamakai bahasa pemograman solidity 0.6.6
pragma solidity ^0.6.6;

/// Untuk Membuat Contract kita menggunakan sintaks berikut
contract Test{
    /// Tipe Data
    uint256 public myNumber;
    bool internal isActive;
    bytes32 password;
    string name;
    
    /// Array
    string[] names;
    mapping(address => Person) ids;
    
    /// Mapping
    /*{
        [0]: 0x0000
        [1]: 0x0000
        [2]: 0x0000
    }*/
    
    /// 0xncajnduabwda....  42 char
    address id; 
    /// Group Objek
    struct Person{
        address id;
        string name;
        uint24 age;
        /// Kita bisa memanggil Struct/Objek lain didalam objek
        /// Home home;
        /// Kita juga bisa memanggil mapping di dalam objek
        ///mapping;
    }
    
    ///struct Home{
        
    ///}
    
    /// Membuat enum
    enum Day {Monday, Tuesday}
    /// Membuat constructor
    /// constructor harus public
    constructor() public {
        myNumber = 16;
        isActive = true;
        name = 'Renol';
    }
    
    // Contoh function(type name) {public | external | internal | private} {pure | constant | view | payable} returns()
    // Kita juga bisa memasukan nya kedalam variabel misal :
    // bool internal isActive;
    
    // Contoh Modifier
    modifier above10(uint256 _newNumber) {
        /// restrictions
        require(_newNumber <= 10, "Number is above 10");
        _;
    }
    
    
    // Contoh function
    function setNumber(uint256 _newNumber) external payable above10(_newNumber) {
        myNumber = _newNumber;
        /// restrictions
        /// require(_newNumber <= 10, "Number is above 10");
        
        // Tiga Variable Spesial
        // msg.value === ''
        // msg.sender
        // now
    }
    
    function getNumber() external pure returns (uint256) {
        /// return myNumber; pure diganti dulu sama view
        return 5+5;
    }
    
    
    
    
    
    
    
    
}