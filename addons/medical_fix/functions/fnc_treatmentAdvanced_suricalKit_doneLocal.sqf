#include "script_component.hpp"
/*
 * Author: SIVAT
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
 * [bob, kevin] call ACE_medical_fix_fnc_treatmentAdvanced_suricalKit_doneLocal
 *
 * Public: No
 */

params ["_caller", "_target"];

if (alive _target) exitWith {
    // fractures
    _target setVariable [QEGVAR(medical,fractures), [], true];
    // Resetting damage on vanilla and ACE systems
    _target setDamage 0;
    _target setVariable [QEGVAR(medical,bodyPartStatus), [0,0,0,0,0,0], true];
};
