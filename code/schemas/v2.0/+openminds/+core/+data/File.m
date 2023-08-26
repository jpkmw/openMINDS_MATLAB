classdef File < openminds.abstract.Schema
%File - Structured information on a file instance that is accessible via a URL.
%
%   PROPERTIES:
%
%   IRI              : (1,1) string
%                      Enter the internationalized resource identifier of this single file.
%
%   content          : (1,1) string
%                      Enter a short content description for this file instance.
%
%   fileRepository   : (1,1) <a href="matlab:help openminds.core.FileRepository" style="font-weight:bold">FileRepository</a>
%                      Add the over all repository to which this single file belongs.
%
%   format           : (1,1) <a href="matlab:help openminds.core.ContentType" style="font-weight:bold">ContentType</a>
%                      Add the content type of this file instance.
%
%   hash             : (1,1) <a href="matlab:help openminds.core.Hash" style="font-weight:bold">Hash</a>
%                      Add the hash that was generated for this file instance.
%
%   isPartOf         : (1,:) <a href="matlab:help openminds.core.FileBundle" style="font-weight:bold">FileBundle</a>
%                      Add one or several bundles in which this single file can be grouped.
%
%   name             : (1,1) string
%                      Enter the name of this single file.
%
%   specialUsageRole : (1,1) <a href="matlab:help openminds.controlledterms.FileUsageRole" style="font-weight:bold">FileUsageRole</a>
%                      Add a special usage role for this single file.
%
%   storageSize      : (1,1) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>
%                      Enter the storage size this file instance allocates.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the internationalized resource identifier of this single file.
        IRI (1,1) string

        % Enter a short content description for this file instance.
        content (1,1) string

        % Add the over all repository to which this single file belongs.
        fileRepository (1,:) openminds.core.FileRepository ...
            {mustBeSpecifiedLength(fileRepository, 0, 1)}

        % Add the content type of this file instance.
        format (1,:) openminds.core.ContentType ...
            {mustBeSpecifiedLength(format, 0, 1)}

        % Add the hash that was generated for this file instance.
        hash (1,:) openminds.core.Hash ...
            {mustBeSpecifiedLength(hash, 0, 1)}

        % Add one or several bundles in which this single file can be grouped.
        isPartOf (1,:) openminds.core.FileBundle ...
            {mustBeListOfUniqueItems(isPartOf)}

        % Enter the name of this single file.
        name (1,1) string

        % Add a special usage role for this single file.
        specialUsageRole (1,:) openminds.controlledterms.FileUsageRole ...
            {mustBeSpecifiedLength(specialUsageRole, 0, 1)}

        % Enter the storage size this file instance allocates.
        storageSize (1,:) openminds.core.QuantitativeValue ...
            {mustBeSpecifiedLength(storageSize, 0, 1)}
    end

    properties (Access = protected)
        Required = ["IRI", "isPartOf", "name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/File"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'fileRepository', "openminds.core.FileRepository", ...
            'format', "openminds.core.ContentType", ...
            'isPartOf', "openminds.core.FileBundle", ...
            'specialUsageRole', "openminds.controlledterms.FileUsageRole" ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'hash', "openminds.core.Hash", ...
            'storageSize', "openminds.core.QuantitativeValue" ...
        )
    end

    methods
        function obj = File(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end