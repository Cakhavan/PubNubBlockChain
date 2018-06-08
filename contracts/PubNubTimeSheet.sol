pragma solidity ^0.4.18;

contract PubNubTimeSheet{


	mapping (uint => uint) punchCard;
	mapping (address => uint) cardToEmployee;
	address[100] Employees;

	//initialize each employee address to their id # and set the id # to the "Employees" address array
	function setEmployee(uint id, address addy) public{
		cardToEmployee[addy] = id;
		Employees[id] = addy;
	}

	//Employee inputs amount of hours worked
	function input(uint time, uint id) public {

	//authenticate the employee
		require(msg.sender == Employees[id]);

		punchCard[id] = time;

	  
	}

	//get the employee ID associated with the Employee's address
	function getMapping(address addy) public view returns (uint){

		return cardToEmployee[addy];
	}


	//look up amount hours an employee has worked
	function getHours(uint id) public view returns (uint){

		return punchCard[id];
	}



}