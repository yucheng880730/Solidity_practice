pragma solidity ^0.4.0;

library IntExtended {
    
    function increment (uint _self) returns (uint) {
        return _self + 1;
    }
    
    function decrement (uint _self) returns (uint){
        return _self - 1;
    }
    
    function incremnetByValue (uint _self, uint _value) returns (uint){
        return _self + _value;
    }
    
    function decrementByValue (uint _self, uint _value) returns (uint){
        return _self - _value;
    }
}
