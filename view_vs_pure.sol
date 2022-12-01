// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract local
{
    uint age=10;
    // function getter() public view returns(uint)
    // {
    //     return age;
    //}

    function getter() public pure returns(uint)  //we can also use view here
    {
        uint roll=100;
        return roll;
    }
}