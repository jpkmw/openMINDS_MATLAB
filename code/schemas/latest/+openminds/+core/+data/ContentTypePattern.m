classdef ContentTypePattern < openminds.abstract.Schema
%ContentTypePattern - No description available.
%
%   PROPERTIES:
%
%   contentType : (1,1) <a href="matlab:help openminds.core.ContentType" style="font-weight:bold">ContentType</a>
%                 Add the content type that can be defined by the regular expression of this content type pattern (e.g., for file extensions).
%
%   lookupLabel : (1,1) string
%                 Enter a lookup label for this content type pattern that may help you to find this instance more easily.
%
%   regex       : (1,1) string
%                 Enter the regular expression for common elements within the file names (including their file path and/or extension) of the files formatted using the stated 'contentType'.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the content type that can be defined by the regular expression of this content type pattern (e.g., for file extensions).
        contentType (1,:) openminds.core.ContentType ...
            {mustBeSpecifiedLength(contentType, 0, 1)}

        % Enter a lookup label for this content type pattern that may help you to find this instance more easily.
        lookupLabel (1,1) string

        % Enter the regular expression for common elements within the file names (including their file path and/or extension) of the files formatted using the stated 'contentType'.
        regex (1,1) string
    end

    properties (Access = protected)
        Required = ["contentType", "regex"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/ContentTypePattern"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'contentType', "openminds.core.ContentType" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = ContentTypePattern(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.lookupLabel);
        end
    end

end