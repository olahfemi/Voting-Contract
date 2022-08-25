// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voting {
    struct Options {
        bool choice;

    }
    address[] public addr;
    mapping (address => Options) choices;

    function MakeChoice(bool _choice) public {
        choices[msg.sender].choice = _choice;
        addr.push(msg.sender);
    }

    function ViewChoice(address _addr) public view returns(bool) {
        return choices[_addr].choice;
    }
}