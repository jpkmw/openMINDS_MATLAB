classdef RRID < openminds.abstract.Schema
%RRID - A persistent identifier for a research resource provided by the Resource Identification Initiative.
%
%   PROPERTIES:
%
%   identifier : (1,1) string
%                Enter the resource identifier provided by the Resource Identification Initiative ('Research Resource IDentifier'; RRID) as an internationalized resource identifier (IRI) following the defined pattern (i.e., 'https://scicrunch.org/resolver/' + RRID).

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the resource identifier provided by the Resource Identification Initiative ('Research Resource IDentifier'; RRID) as an internationalized resource identifier (IRI) following the defined pattern (i.e., 'https://scicrunch.org/resolver/' + RRID).
        identifier (1,1) string ...
            {mustMatchPattern(identifier, 'https://scicrunch.org/resolver/RRID:([A-Za-z]+)[_:]([A-Za-z0-9_:-]+)')}
    end

    properties (Access = protected)
        Required = ["identifier"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/RRID"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = RRID(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.identifier);
        end
    end

end