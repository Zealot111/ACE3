#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_medical"};
        author = "RedBear Community";
        authors[] = {"SIVAT", "Lexlaw"};
        url = ECSTRING(main,URL);
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "ACE_Medical_Treatments.hpp"

class ACE_newEvents {
    treatmentAdvanced_suricalKit_doneLocal = QGVAR(treatmentAdvanced_suricalKit_doneLocal);
};
