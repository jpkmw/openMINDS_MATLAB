classdef RelatedPublication < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = ["openminds.core.DOI", "openminds.core.ISBN"]
        IS_SCALAR = false
    end
end
