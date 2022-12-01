// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Array
{
    bytes3 public b3; //3 bytes array i.e 6 bits
    bytes2 public b2; //2 bytes array i.e 4  bits

    function setter() public
    {
        b3='abc';
         b2='ab';
        // b2='a';
        // b3[0]='d'->gives error as array is fixedbyte and is immutable.
    }
}