pragma solidity ^0.4.0;

library Strings {
    
    function concat (string _base, string _value) internal returns (string) {
        
        // string不提供索引式訪問
        // 為了節省記憶體，應多使用bytes
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);
        
        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);
        
        uint i;
        uint j;
        
        for (i = 0; i < _baseBytes.length; i++){
            _newValue[j++] = _baseBytes[i];
        }
        
        for (i = 0; i < _valueBytes.length; i++){
            _newValue[j++] = _valueBytes[i];
        }
        
        return string(_newValue);
    }
    
    function strpos (string _base, string _value) internal returns (int) {
        
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);
        
        assert(_valueBytes.length == 1);
        
        for (uint i = 0; i < _baseBytes.length; i++){
            if(_baseBytes[i] == _valueBytes[0]) {
                return int(i);
            }
        }
        
        return -1;
    }
}

contract TestStrings {
    
    using Strings for string;
    
    function testConcat(string _base) returns (string) {
        return _base.concat("Lin");
    }
    
    function needleInHaystack(string _base) returns (int){
        return _base.strpos("l");
    }
}