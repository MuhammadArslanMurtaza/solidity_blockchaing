// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AllSolidatyConcept {
    // data type
    // three types data type in soliday
    // 1. value type
    // 2. refrence type
    // 3. user define data type
    
    // Name of value type data types
    // int, uint, 32uint, bool, bytets, address,Structs
    int public a = 1;
    uint public b = 2;
    int32 public aa = 1;
    uint32 public bb = 2;
    uint64 public bbb = 2;
    bytes32 public c;
    bytes public cc;
    address public dd;
    address public owner;
    // Name of refrence type data types
    // array, string, enum
    uint32[] public ff = [1,1,2,3];
    string public str = "demo test";
    // user define data tupe
    // enum its also called user define data type
    enum Status{
        Pending,
        Completed
    }
    Status public stus;
    // structure is a user define data type
    struct structs {
        string name;
        uint32 age;
    }
    constructor() {
        owner = msg.sender;
    }
    // creating new variable using structure data type
    structs public student = structs('name',23);
    structs[] public students;
    // arrays in solidaty
    uint64[] public student_array;
    // loops in solidity
    // three types of loop in solidity
    // 1. for loop 2. while loop 3. do while loop

    // functions in solidaty
    // this is normal function whose can reading and writing global and local state type
    // variables
    function func_name(Status parmeter_one) public returns(Status){
        stus = parmeter_one;
        stus = Status.Completed;
        delete stus;
        return stus;
    }
    function func_for_structure() public {
        // we can set struct type veriable without orders using key pair values
        // student = structs({age:34,name:'arslan'});
        // another method for setting value inside struct data type
        student.name = 'demo';
        student.age = 33;
        // one another method
        students.push(structs('name_demo',54));
        students.push(structs({age:34,name:'arslan'}));
    }
    function studentArray_func() public{
        student_array[0] = 1;
        student_array.push(3);
        student_array.pop();
        delete student_array;
    }
    // view type functions
    // that functions which can only read global state variables
    function func_for_view() public view returns(Status){
        return stus;
    }
    // pure type functions
    // that type of functons which does not read and write global state type variables
    function func_for_pure(uint32 ab) public pure returns(uint32){
        return ab;
    }
    // payable type functions
    // that type of functons which used for pay ether in the contract base
    function func_for_payable(uint32 ab) public payable returns(uint32){
        return ab;
    }
    // modifier 
    // this used for checking validation befor execution of the contract functions
    modifier onlyOwner(){
        require(msg.sender == owner,"invalid owner");
        _;
    }
    // example of modifier
    function demotest(address _owneraddress) public onlyOwner{
        require(_owneraddress != address(0),"not accessible for this user");
        owner = _owneraddress;
    }

    function demotesttwo(address _owneraddress) public returns(string memory){
        require(_owneraddress != address(0),"not accessible for this user");
        owner = _owneraddress;
        return 'demo';
    }

}
// you can create function outsite the contract like
function outsite_func() {
    
}
function outsite_functwo(address adres) pure {
    
}
function outsite_functhree(address adres) view {
    
}
contract B is AllSolidatyConcept
{

}