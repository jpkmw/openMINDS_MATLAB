classdef FileArchive < openminds.abstract.Schema
%FileArchive - No description available.
%
%   PROPERTIES:
%
%   IRI        : (1,1) string
%                Enter the internationalized resource identifier (IRI) to this file archive.
%
%   format     : (1,1) <a href="matlab:help openminds.core.ContentType" style="font-weight:bold">ContentType</a>
%                Add the content type of this file archive.
%
%   sourceData : (1,:) <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>
%                Add the data that were ingested and modified to create this file archive.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter the internationalized resource identifier (IRI) to this file archive.
        IRI (1,1) string

        % Add the content type of this file archive.
        format (1,:) openminds.core.ContentType ...
            {mustBeSpecifiedLength(format, 0, 1)}

        % Add the data that were ingested and modified to create this file archive.
        sourceData (1,:) openminds.core.File ...
            {mustBeListOfUniqueItems(sourceData)}
    end

    properties (Access = protected)
        Required = ["IRI", "format"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/FileArchive"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'format', "openminds.core.ContentType", ...
            'sourceData', "openminds.core.File" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = FileArchive(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.IRI);
        end
    end

end