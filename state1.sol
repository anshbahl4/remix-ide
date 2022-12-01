// // SPDX-License-Identifier: GPL-3.0

//  pragma solidity >= 0.5.0 < 0.9.0;

// contract local
// {
//  string  name="ravi";
// function store () pure public returns (uint)
// {
   
 
//       uint age=11; 
//        return age;
// }
// }

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract local
{
    uint public age=10;

//     function getter() public view returns(uint)
//     {
//         return age;
        
//     }
//     function setter() public
      function setter(uint newage) public
    {
          age=newage; 
    }
}
