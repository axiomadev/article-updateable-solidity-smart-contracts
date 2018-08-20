import "msc_eternal_storage.sol";

contract LogicSmartContract {
    EternalStorage data;

    function constructor(address _data) {
        data = EternalStorage(_data);
    }

    function getSomeUint(bytes32 _key) {
        return data.getUint(keccak256("some_data", _key));
    }
}
