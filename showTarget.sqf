// Seletor de alvos aleatórios
// By Toaster [AEGIS]

// Parametros: _target (Objeto do Alvo)
//			   _maxdelay (Tempo aleatorio entre 0 e _maxdelay)
// ex: [[alvo01,alvo02,alvo3],4] spawn fn_ShowTargetsInArea; 
// Seleciona entre os alvos01 até alvos03 e faz os alvos aparecerem entre 0 e 4 segundos




if (!isServer) exitWith {}; // Executa no server somente

fn_ShowTargetsInArea =
{
	private ["_targets","_maxdelay"];
	_targets = _this select 0;
	_maxdelay = _this select 1;
	
	while {count _targets > 0} do {


		_selectedTarget = _targets call bis_fnc_selectRandom;
		_targets = _targets - [_selectedTarget];

		

		if (_selectedTarget getVariable ["movingTarget", False]) then {
			

			switch (_selectedTarget getVariable "movingDirection") do { 
				case "forward": {
					targetDirection = (direction _selectedTarget)+180
				}; 
				case "backwards": { 
					targetDirection = (direction _selectedTarget)-180
				};
				case "left": {
					targetDirection = (direction _selectedTarget)-90
				};
				case "right": {
					targetDirection = (direction _selectedTarget)+90
				};
			};

			_selectedTarget animate["terc",0];
			[_selectedTarget,targetDirection,4,0.1,3] spawn fn_MovingTarget;
			sleep (random _maxdelay);
		} else {
		_selectedTarget animate["terc",0];
		sleep (random _maxdelay);
		}
		


	}	
	
};



// Script de mover o alvo
// Author: Zooloo75
fn_MovingTarget =
{
	
	private ["_target","_distance","_speed","_dir"];

	_target = _this select 0;
	_dir = _this select 1;
	_distance = _this select 2;
	_speed = _this select 3;
	_pause = _this select 4;


	
	

	//while {true} do
	//{
		
		for "_i" from 0 to _distance/_speed do
		{
			_target setPos 
			[
				(position _target select 0) + ((sin (_dir)))*_speed,
				(position _target select 1) + ((cos (_dir)))*_speed,
				0
			];
			sleep 0.01;
		};
		sleep _pause;
		for "_i" from 0 to _distance/_speed do
		{
			_target setPos 
			[
				(position _target select 0) - (sin (_dir))*_speed,
				(position _target select 1) - ((cos (_dir)))*_speed,
				0
			];
			sleep 0.01;
		};
		sleep _pause;

	//};
};


