pragma solidity ^0.8.18;


contract MyToken {

    // public variables here
    string public Name = "Jiro";
    string public Abbrv = "Jr";
    uint public Supply = 0;
    
    // mapping variable here
    mapping (address => uint) public blnc;

    // mint function
    function mint (address add, uint val) public{
        Supply += val;
        blnc[add] += val;
    }
    // burn function
    function burn(address add, uint val) public{
        if(blnc[add] >= val){
             Supply -= val;
             blnc[add] -= val;
        }
    }
       

}
