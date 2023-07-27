// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Register {
    struct Referral {
        address referrer;
        string name;
    }

    string public github;
    address public owner;
    Referral[] public referrals;

    constructor(string memory _github, address _owner) {
        github = _github;
        owner = _owner;
    }

    function addReferral(string memory name, address referrer) public {
        require(owner == msg.sender, "Only the owner can add referrals");
        referrals.push(Referral(referrer, name));
        return;
    }

    function totalReferrals() public view returns (uint) {
        return referrals.length;
    }
}
