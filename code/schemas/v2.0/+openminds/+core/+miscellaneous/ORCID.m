classdef ORCID < openminds.abstract.Schema
%ORCID - A persistent identifier for a researcher provided by Open Researcher and Contributor ID, Inc.
%
%   PROPERTIES:
%
%   identifier : (1,1) string
%                Enter the resolvable identifier (IRI) of the Open Researcher and Contributor ID, Inc.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the resolvable identifier (IRI) of the Open Researcher and Contributor ID, Inc.
        identifier (1,1) string ...
            {mustMatchPattern(identifier, '^https://orcid.org/[0-9]{4}-[0-9]{4}-[0-9]{4}-([0-9]{3}[A-Z]|[0-9]{4})$')}
    end

    properties (Access = protected)
        Required = []
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/ORCID"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = ORCID(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.identifier);
        end
    end

end