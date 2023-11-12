// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract GymMembership {
    mapping(address => bool) public isMember;

    function purchaseMembership() public {
        require(!isMember[msg.sender], "Already a gym member");
        isMember[msg.sender] = true;
    }

    function accessGym() public view {
        require(isMember[msg.sender], "No active gym membership");
        revert("No access to the gym without an active membership");
    }

    function checkMembershipStatus(address member) public view returns (string memory) {
        assert(isMember[member]);
        return "There is an active gym membership";
    }
}
