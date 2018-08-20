contract SM1 {
    bool public data;
    address public sm2;

    function constructor(address _sm2Address) {
        sm2 = _sm2Address;
    }

    function handle() {
        data = true;
        sm2.call("handle2");
    }
}
