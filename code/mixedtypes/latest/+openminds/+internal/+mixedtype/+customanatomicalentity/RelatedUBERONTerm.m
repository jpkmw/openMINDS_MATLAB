classdef RelatedUBERONTerm < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = ["openminds.controlledterms.Organ", "openminds.controlledterms.UBERONParcellation"]
        IS_SCALAR = true
    end
end
