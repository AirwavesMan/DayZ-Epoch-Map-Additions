/*******************************************************
*				Vatra Bridge by A Man				   *
*													   *
*Original code made by killzonekid  All Credits to him *
*Source: http://killzonekid.com/arma-building-bridges/ *
********************************************************/

if (isNil "oneTime") then {

oneTime = true;

fnc_bridgeA2 = {

private ["_start","_obj"];
	_start = createVehicle [
		_this select 2,
		_this select 0,
	[],
	0, "
	CAN_COLLIDE"
	];
							
	_start setVectorUp [0,0,1];
	_start setDir (_this select 1);
	_start setPosATL (_this select 0);
	
	for "_i" from 1 to (_this select 3) do {
		_obj = createVehicle [
		_this select 2,
		_this select 0,
		[],
		0,
		"CAN_COLLIDE"
		];
		
		_obj attachTo [_start, [
			_i*(_this select 4),
			_i*(_this select 5),
			_i*(_this select 6)
		]];
	};
};


//Placement of objects//
//[startingPosition, direction, objectClass, repeats, offsetX, offsetY, offsetZ]


[ [2816, 8354, -8], 78, "MAP_Bridge_stone_asf2_25", 16, 0, 25, 0 ] call fnc_bridgeA2;
diag_log "[bridgeVatra loaded]";

};