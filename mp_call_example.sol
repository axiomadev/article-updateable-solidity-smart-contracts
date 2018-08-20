contract SM1 {
    bool public data;
    SM2 public sm2;

    function constructor(address _sm2Address) {
        sm2 = SM2(_sm2Address);
    }

    function handle() {
        data = true;
        sm2.handle2();

        // this would cause an error:
        // sm2.data2 = true;
    }
}

contract SM2 {
    bool public data2;

    function handle2() {
        data2 = false;
    }
}
