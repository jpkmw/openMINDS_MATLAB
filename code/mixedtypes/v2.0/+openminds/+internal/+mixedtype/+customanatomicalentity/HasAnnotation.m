classdef HasAnnotation < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = "openminds.sands.CustomAnnotation"
        IS_SCALAR = true
    end
end
