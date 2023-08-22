classdef ContentType < openminds.abstract.Schema
%ContentType - Structured information on the content type of a file instance, bundle or repository.
%
%   PROPERTIES:
%
%   associatedFileExtension : (1,:) string
%                             Enter one or several file extensions associated with this content type.
%
%   category                : (1,1) string
%                             Enter the category to which this content type belongs to.
%
%   name                    : (1,1) string
%                             Enter the name (iana-inspired convention) of this content type.
%
%   relatedMediaType        : (1,1) string
%                             Enter the iternationalized resource identifier (IRI) to a registered media type (e.g. on IANA.org) matching this content type.
%
%   synonym                 : (1,:) string
%                             Enter one or several synonyms of this content type.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter one or several file extensions associated with this content type.
        associatedFileExtension (1,:) string ...
            {mustBeListOfUniqueItems(associatedFileExtension)}

        % Enter the category to which this content type belongs to.
        category (1,1) string

        % Enter the name (iana-inspired convention) of this content type.
        name (1,1) string

        % Enter the iternationalized resource identifier (IRI) to a registered media type (e.g. on IANA.org) matching this content type.
        relatedMediaType (1,1) string

        % Enter one or several synonyms of this content type.
        synonym (1,:) string ...
            {mustBeListOfUniqueItems(synonym)}
    end

    properties (Access = protected)
        Required = ["associatedFileExtension", "category", "name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/ContentType"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = ContentType(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end