classdef DescribedIn < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = ["openminds.core.DOI", "openminds.core.File", "openminds.core.WebResource"]
        IS_SCALAR = false
    end
end
