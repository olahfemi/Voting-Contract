// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voting {
    struct Options {
        bool choice;

    }

    mapping (address => Options) choices;

    function MakeChoice(address addr, bool _choice) public {
        choices[addr].choice = _choice;
    }

    function ViewChoice(address addr) public view returns(bool) {
        return choices[addr].choice;
    }
}