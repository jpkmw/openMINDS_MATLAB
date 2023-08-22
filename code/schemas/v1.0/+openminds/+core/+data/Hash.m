classdef Hash < openminds.abstract.Schema
%Hash - Structured information on a hash.
%
%   PROPERTIES:
%
%   algorithm : (1,1) string
%               Enter the algorithm used to generate this hash.
%
%   digest    : (1,1) string
%               Enter the digest of this hash.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the algorithm used to generate this hash.
        algorithm (1,1) string

        % Enter the digest of this hash.
        digest (1,1) string
    end

    properties (Access = protected)
        Required = ["algorithm", "digest"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/Hash"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = Hash(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.algorithm);
        end
    end

end