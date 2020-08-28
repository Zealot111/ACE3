class ACE_Medical_Actions {
    class Advanced {
        class FieldDressing;
        class SurgicalKit: fieldDressing {
            callbackSuccess = QUOTE(DFUNC(treatmentAdvanced_suricalKit_done));
        };
    };
};
