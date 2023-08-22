classdef License < openminds.abstract.Schema
%License - Structured information on a used license.
%
%   PROPERTIES:
%
%   deed      : (1,1) string
%               Enter the internationalized resource identifier (IRI) pointing to the deed of this license.
%
%   fullName  : (1,1) string
%               Enter the full name of this license.
%
%   legalCode : (1,1) string
%               Enter the internationalized resource identifier (IRI) pointing to the legal code of this license.
%
%   shortName : (1,1) string
%               Enter the short name of this license.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the internationalized resource identifier (IRI) pointing to the deed of this license.
        deed (1,1) string

        % Enter the full name of this license.
        fullName (1,1) string

        % Enter the internationalized resource identifier (IRI) pointing to the legal code of this license.
        legalCode (1,1) string

        % Enter the short name of this license.
        shortName (1,1) string
    end

    properties (Access = protected)
        Required = ["fullName", "legalCode", "shortName"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/License"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = License(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.fullName);
        end
    end

end