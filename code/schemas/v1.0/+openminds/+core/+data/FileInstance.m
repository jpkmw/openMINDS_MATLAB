classdef FileInstance < openminds.abstract.Schema
%FileInstance - Structured information on a file instances.
%
%   PROPERTIES:
%
%   IRI              : (1,1) string
%                      Enter the internationalized resource identifier of this file instance.
%
%   content          : (1,1) string
%                      Enter a short content description for this file instance.
%
%   format           : (1,1) <a href="matlab:help openminds.core.ContentType" style="font-weight:bold">ContentType</a>
%                      Add the content type of this file instance.
%
%   hash             : (1,1) <a href="matlab:help openminds.core.Hash" style="font-weight:bold">Hash</a>
%                      Add the hash that was generated for this file instance.
%
%   isPartOf         : (1,:) <a href="matlab:help openminds.core.FileBundle" style="font-weight:bold">FileBundle</a>
%                      Add one or several file bundles in which this file instance can be grouped in.
%
%   name             : (1,1) string
%                      Enter the name of this file instance.
%
%   specialUsageRole : (1,1) <a href="matlab:help openminds.controlledterms.fileUsageRole" style="font-weight:bold">fileUsageRole</a>
%                      Add a special usage role for this file instance.
%
%   storageSize      : (1,1) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>
%                      Enter the storage size this file instance allocates.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the internationalized resource identifier of this file instance.
        IRI (1,1) string

        % Enter a short content description for this file instance.
        content (1,1) string

        % Add the content type of this file instance.
        format (1,:) openminds.core.ContentType ...
            {mustBeSpecifiedLength(format, 0, 1)}

        % Add the hash that was generated for this file instance.
        hash (1,:) openminds.core.Hash ...
            {mustBeSpecifiedLength(hash, 0, 1)}

        % Add one or several file bundles in which this file instance can be grouped in.
        isPartOf (1,:) openminds.core.FileBundle ...
            {mustBeListOfUniqueItems(isPartOf)}

        % Enter the name of this file instance.
        name (1,1) string

        % Add a special usage role for this file instance.
        specialUsageRole (1,:) openminds.controlledterms.fileUsageRole ...
            {mustBeSpecifiedLength(specialUsageRole, 0, 1)}

        % Enter the storage size this file instance allocates.
        storageSize (1,:) openminds.core.QuantitativeValue ...
            {mustBeSpecifiedLength(storageSize, 0, 1)}
    end

    properties (Access = protected)
        Required = ["IRI", "isPartOf", "name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/FileInstance"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'format', "openminds.core.ContentType", ...
            'hash', "openminds.core.Hash", ...
            'isPartOf', "openminds.core.FileBundle", ...
            'specialUsageRole', "openminds.controlledterms.fileUsageRole" ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'storageSize', "openminds.core.QuantitativeValue" ...
        )
    end

    methods
        function obj = FileInstance(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end