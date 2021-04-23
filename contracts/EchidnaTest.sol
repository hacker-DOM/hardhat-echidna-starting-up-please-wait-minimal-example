// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

library A {
    function foo() external {}
}

contract B {
    function bar() external {
        A.foo();
    }
}

contract C {
    function baz() public {}
}

contract EchidnaTest {
    constructor() {
        B b = new B();
        C c = new C();
        c.baz();
    }

    function echidna_test() public returns (bool) {
        return true;
    }
}