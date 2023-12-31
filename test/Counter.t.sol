// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function test_Decrement() public {
        counter.decrement();
        assertEq(counter.number(), -1);
    }

    function testFuzz_SetNumber(int256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
