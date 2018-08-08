/*
 * Author: KoffeinFlummi
 * Replaces vanilla items with ACE ones.
 *
 * Arguments:
 * 0: The unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [bob] call ace_medical_fnc_itemCheck
 *
 * Public: Yes
 */

#include "script_component.hpp"

params ["_unit"];

while {({_x == "FirstAidKit"} count items _unit) > 0} do {
    _unit removeItem "FirstAidKit";
    if (GVAR(level) >= 2) then {
        for [{_y= 1},{_y <= 6},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_fieldDressing";
            _unit addItemToBackpack "ACE_packingBandage";
            _unit addItemToBackpack "ACE_elasticBandage";
            _unit addItemToBackpack "ACE_quikclot";
        };
        for [{_y= 1},{_y <= 2},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_morphine";
            _unit addItemToBackpack "ACE_epinephrine";
            _unit addItemToBackpack "ACE_tourniquet";
        };
    } else {
        _unit addItem "ACE_fieldDressing";
        _unit addItem "ACE_fieldDressing";
        _unit addItem "ACE_morphine";
    };
};

while {({_x == "Medikit"} count items _unit) > 0} do {
    _unit removeItem "Medikit";
    if (GVAR(level) >= 2) then {
        for [{_y= 1},{_y <= 30},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_fieldDressing";
            _unit addItemToBackpack "ACE_packingBandage";
            _unit addItemToBackpack "ACE_elasticBandage";
            _unit addItemToBackpack "ACE_quikclot";
        };
        for [{_y= 1},{_y <= 15},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_morphine";
            _unit addItemToBackpack "ACE_epinephrine";
        };
        for [{_y= 1},{_y <= 4},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_tourniquet";
        };
        for [{_y= 1},{_y <= 8},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_personalAidKit";
        };
        for [{_y= 1},{_y <= 6},{_y = _y + 1}] do {
            _unit addItemToBackpack "ACE_salineIV_250";
        };
        _unit addItemToBackpack "ACE_surgicalKit";
    } else {
        _unit addItemToBackpack "ACE_epinephrine";
        _unit addItemToBackpack "ACE_epinephrine";
        _unit addItemToBackpack "ACE_epinephrine";
        _unit addItemToBackpack "ACE_epinephrine";
        _unit addItemToBackpack "ACE_bloodIV";
        _unit addItemToBackpack "ACE_bloodIV";
    };
};
