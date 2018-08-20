contract EternalStroage {
    // ...
    // all mappings are here
    // ...

    function getUint(bytes32 _key) external view returns(uint) {
        return uintStorage[_key];
    }

    function setUint(bytes32 _key, uint _value) external {
        uintStorage[_key] = _value;
    }

    function deleteUint(bytes32 _key) external {
        delete uintStorage[_key];
    }

    // other get/set/delete functions are here
}
