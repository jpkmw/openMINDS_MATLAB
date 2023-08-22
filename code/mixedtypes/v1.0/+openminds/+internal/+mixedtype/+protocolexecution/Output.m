classdef Output < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = ["openminds.core.FileBundle", "openminds.core.FileInstance", "openminds.core.SubjectGroupState", "openminds.core.SubjectState", "openminds.core.TissueSampleCollectionState", "openminds.core.TissueSampleState"]
        IS_SCALAR = false
    end
end
