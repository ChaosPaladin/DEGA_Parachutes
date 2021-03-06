/*
	Author: Community Upgrade Project

	Description:
	Checks if caller is player and in cargo position with ramp lowered or open. Whilst making sure vehicle is above defined height.

*/

// For Deploying Static Line
private ["_vehicle","_canDeploy","_heightAboveGround"];
_vehicle = _this;
   
_canDeploy = false;
if ((_vehicle getCargoIndex player) >= 0 && (getNumber (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "DEGA_Jumping_enabled") == 1) && player getVariable ['DEGA_Jumping_Condition', false]) then {
   _heightAboveGround = (getPosATL _vehicle) select 2;
   if (_heightAboveGround > 140) then {
      _canDeploy = true;
   };
};
_canDeploy