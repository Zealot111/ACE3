#include "script_component.hpp"
#include "script_component.hpp"
/*
 * Author: Glowbal
 *
 *
 * Arguments:
 * 0: Caller <OBJECT>
 * 1: Target <OBJECT>
 *
 * Return Value:
 * Boolean <BOOL>
 *
 * Example:
 * [bob, kevin] call ACE_medical_fnc_treatmentAdvanced_fullHealLocal
 *
 * Public: No
 */

params ["_caller", "_target"];

if (alive _target) exitWith {
    // fractures
    _target setVariable [QGVAR(fractures), []];
    // Resetting damage
    _target setDamage 0;
};
