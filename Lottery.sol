   // SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Lottery{
    address public manager; //Stores addrtess of manager
    address payable[] public participants; 

    constructor()
    {
        manager=msg.sender; //Global variable

    }
    receive() external payable
    { require(msg.value==1 ether); //If this line is true only then next line will work
        participants.push(payable(msg.sender)); //to register participants address and ethers will transfer from participants to manager
    }
    function getBalance() public view returns(uint)
    {   require(msg.sender==manager);
        return address(this).balance;
    }
    function random() public view returns(uint)
    {
    return  uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,participants.length)));
    }
    function selectWinner() public 
    {
        require(msg.sender==manager) ;
        require(participants.length>=3);
        uint r=random();
        address payable winner;
        uint index= r % participants.length;
        winner=participants[index];
        winner.transfer(getBalance());

        participants=new address payable[](0); //After full execution of code our dynamic erray that is participants got empty again
    }
}      

