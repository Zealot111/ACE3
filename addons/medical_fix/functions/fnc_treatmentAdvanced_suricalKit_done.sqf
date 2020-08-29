#include "script_component.hpp"
/*
 * Author: SIVAT
 *
 *
 * Arguments:
 * 0: Caller <OBJECT>
 * 1: Target <OBJECT>
 * 2: SelectionName <STRING>
 * 3: ClassName <STRING>
 * 4: Items <UNKNOWN>
 *
 * Return Value:
 * Boolean <BOOL>
 *
 * Example:
 * [bob, kevin, "selection", "classname", ] call ACE_medical_fix_fnc_treatmentAdvanced_suricalKit_done
 *
 * Public: No
 */

params ["_caller", "_target", "_selectionName", "_className", "_items"];

if (local _target) then {
    [QGVAR(treatmentAdvanced_suricalKit_doneLocal), [_caller, _target]] call CBA_fnc_localEvent;
} else {
    [QGVAR(treatmentAdvanced_suricalKit_doneLocal), [_caller, _target], _target] call CBA_fnc_targetEvent;
};

true;
