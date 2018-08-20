contract SM1 {
    address internal sm2;
    bool public data;

    constructor(address _sm2) public {
        sm2 = _sm2;
    }

    function () public payable {
        address addr = _sm2;
        
        assembly {
            let ptr := mload(0x40)
            calldatacopy(ptr, 0, calldatasize)
            let success := delegatecall(gas, addr, ptr, calldatasize, 0, 0)
            let size := returndatasize
            returndatacopy(ptr, 0, size)
            switch success
            case 0 { revert(ptr, 32) }
            default { return(ptr, 32) }
        }
    }
}

contract SM2 {
    address internal sm2;
    bool public data;

    constructor() public {
        sm2 = address(this);
    }

    function handle() {
        data = false;
    }
}
