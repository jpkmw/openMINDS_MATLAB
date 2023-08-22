classdef Pathology < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = ["openminds.controlledterms.Disease", "openminds.controlledterms.DiseaseModel"]
        IS_SCALAR = false
    end
end
