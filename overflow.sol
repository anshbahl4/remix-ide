// SPDX-License-Identifier: GPL-3.0

// pragma solidity 0.5.0 ; it will get overflow in this solidity version
pragma solidity >=0.5.0 < 0.9.0; //it will work in 0.8.0 and above but it will not increse after 255 becuase uint8 range is from 0 to 255

contract local
{
    uint8 public money=255;

function setter() public{
    money=money+1;
}
}