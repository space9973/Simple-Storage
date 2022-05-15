// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;
contract simplestorage {
    //This will initialize to zero
    uint256  faveroutnumber;
    bool faveroutbool;

    struct people{
        uint256 faveroutnumber;
        string name;
    }
    // people[]public people;
    mapping(string=> uint256) public nametofaveroutnumber;
        people public person= people({faveroutnumber:45, name:"Deepankar"});
    function store(uint256 number)public{
        faveroutnumber=number;
    }
    //view, pure
    function retrieve() public view returns(uint256){
          return faveroutnumber;
    }
    // function addperson(string memory _name , uint256 _faveroutnumber) public{
    //     people(people(_faveroutnumber,_name));
    //     nametofaveroutnumber[_name]= _faveroutnumber;
    // }
}