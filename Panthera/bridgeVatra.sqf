/*******************************************************
* Vatra Bridge by A Man
*
* The bridge must be loaded for every Client and the Server to have a global effect.		  
*		
* Last updated: 09.04.2019
*											  
* Original code made by killzonekid  All Credits to him
* Source: http://killzonekid.com/arma-building-bridges/
********************************************************/

fnc_bridgeA2 = {
	private ["_pos", "_dir", "_class", "_cnt", "_offsetX", "_offsetY", "_offsetZ", "_start", "_obj"];
	
	_pos = _this select 0;
	_dir = _this select 1;
	_class = _this select 2;
	_cnt = _this select 3;
	_offsetX = _this select 4;
	_offsetY = _this select 5;
	_offsetZ = _this select 6;
	
	_start = _class createVehicleLocal  _pos;
	[_class,_pos,[],0, "CAN_COLLIDE"];
									
	_start setVectorUp [0,0,1];
	_start setDir _dir;
	_start setPosATL _pos;
			
	for "_i" from 1 to _cnt do {
		_obj = _class createVehicleLocal _pos;
		_obj attachTo [_start, [_i*_offsetX,_i*_offsetY,_i*_offsetZ]];
	};
};


//Placement of objects//
//[startingPosition, direction, objectClass, repeats, offsetX, offsetY, offsetZ]

[ [2816, 8354, -8], 78, "MAP_Bridge_stone_asf2_25", 16, 0, 25, 0 ] call fnc_bridgeA2;

diag_log "[bridgeVatra loaded]";

