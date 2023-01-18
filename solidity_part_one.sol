// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myFirstContract {
    // Defining Structure
    // struct student {
    //     // Declaring different data types
    //     string name;
    //     string subject;
    //     uint8 marks;
    // }
      
    // Creating mapping
    // mapping (address => student[]) public result;

    // address[] student_result;
     
    // Function adding values to the mapping
    // function adding_values() public {
    //     // student_result.push(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    //     result[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4].push(student("abc","subjt",34));
    // }
      
     // Function to retrieve 
     // values from a mapping
    //  function get_student_result() view public returns (address[] memory) {
    //     return student_result;
    // }
    string[] public strarr = ['demo','dem'];
    modifier checkValueExist(string memory strr){
        // bool
        for(uint8 i=0;i<strarr.length;i++){
            if(keccak256(abi.encodePacked(strarr[i])) == keccak256(abi.encodePacked(strr))){
                // string memory res = string(abi.encodePacked(strr, " name already exist in array"));
                // return res;
                // ab++;
                // return true;
                revert("given name is already exist");
            }
        }
        _;
    }

    function search_value_in_array(string memory strr) private view returns(bool){
        // string memory dtf = storage strr;
        // uint32 ab = 1;
        for(uint8 i=0;i<strarr.length;i++){
            if(keccak256(abi.encodePacked(strarr[i])) == keccak256(abi.encodePacked(strr))){
                // string memory res = string(abi.encodePacked(strr, " name already exist in array"));
                // return res;
                // ab++;
                return true;
            }
        }
        return false;
    }

    function push_in_array(string memory str) public checkValueExist(str) returns(string memory){
        // bool res = search_value_in_array(str);
        // if(res){
        //     return "name already exist in array";
        // }
        strarr.push(str);
        return "name added in array successfully";
    }
}