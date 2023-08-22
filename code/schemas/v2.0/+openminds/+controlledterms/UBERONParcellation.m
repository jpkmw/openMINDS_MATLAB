classdef UBERONParcellation < openminds.abstract.ControlledTerm
%UBERONParcellation - No description available.
%
%   PROPERTIES:
%
%   definition         : (1,1) string
%                        Enter one sentence for defining this term.
%
%   description        : (1,1) string
%                        Enter a short text describing this term.
%
%   name               : (1,1) string
%                        Controlled term originating from a defined terminology.
%
%   ontologyIdentifier : (1,1) string
%                        Enter the internationalized resource identifier (IRI) pointing to the related ontological term.

%   This class was auto-generated by the openMINDS pipeline

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/controlledTerms/UBERONParcellation"
    end

    properties (Constant, Hidden)
        CONTROLLED_INSTANCES = [ ...
        ]
    end

    methods
        function obj = UBERONParcellation(varargin)
            obj@openminds.abstract.ControlledTerm(varargin{:})
        end
    end

end