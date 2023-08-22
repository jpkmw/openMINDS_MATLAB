classdef BrainAtlasVersion < openminds.abstract.Schema
%BrainAtlasVersion - Structured information on a brain atlas (version level).
%
%   PROPERTIES:
%
%   coordinateSpace        : (1,1) <a href="matlab:help openminds.sands.CommonCoordinateSpace" style="font-weight:bold">CommonCoordinateSpace</a>
%                            Add the common coordinate space in which this brain atlas version exists in.
%
%   digitalIdentifier      : (1,1) <a href="matlab:help openminds.core.DOI" style="font-weight:bold">DOI</a>
%                            Add the globally unique and persistent digital identifier of this brain atlas version.
%
%   fullName               : (1,1) string
%                            Enter a descriptive full name for this brain atlas version.
%
%   hasTerminology         : (1,1) <a href="matlab:help openminds.sands.parcellationTerminology" style="font-weight:bold">parcellationTerminology</a>
%                            Add the parcellation terminology for this brain atlas version.
%
%   homepage               : (1,1) <a href="matlab:help openminds.core.URL" style="font-weight:bold">URL</a>
%                            Add the uniform resource locator (URL) to the homepage of this brain atlas version.
%
%   howToCite              : (1,1) string
%                            Enter the preferred citation text for this brain atlas version. Leave blank if citation text can be extracted from the assigned digital identifier.
%
%   isAlternativeVersionOf : (1,:) <a href="matlab:help openminds.sands.BrainAtlasVersion" style="font-weight:bold">BrainAtlasVersion</a>
%                            Add one or several alternative versions to this brain atlas version.
%
%   isNewVersionOf         : (1,1) <a href="matlab:help openminds.sands.BrainAtlasVersion" style="font-weight:bold">BrainAtlasVersion</a>
%                            Add the earlier version of this brain atlas version.
%
%   ontologyIdentifier     : (1,1) string
%                            Enter the identifier (IRI) of the related ontological term matching this brain atlas version.
%
%   releaseDate            : (1,1) datetime
%                            Enter the date of first publication of this brain atlas version.
%
%   shortName              : (1,1) string
%                            Enter a descriptive short name for this brain atlas version.
%
%   versionIdentifier      : (1,1) string
%                            Enter the version identifier of this brain atlas version.
%
%   versionInnovation      : (1,1) string
%                            Enter a short description of the novelties/peculiarities of this brain atlas version.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the common coordinate space in which this brain atlas version exists in.
        coordinateSpace (1,:) openminds.sands.CommonCoordinateSpace ...
            {mustBeSpecifiedLength(coordinateSpace, 0, 1)}

        % Add the globally unique and persistent digital identifier of this brain atlas version.
        digitalIdentifier (1,:) openminds.core.DOI ...
            {mustBeSpecifiedLength(digitalIdentifier, 0, 1)}

        % Enter a descriptive full name for this brain atlas version.
        fullName (1,1) string

        % Add the parcellation terminology for this brain atlas version.
        hasTerminology (1,:) openminds.sands.parcellationTerminology ...
            {mustBeSpecifiedLength(hasTerminology, 0, 1)}

        % Add the uniform resource locator (URL) to the homepage of this brain atlas version.
        homepage (1,:) openminds.core.URL ...
            {mustBeSpecifiedLength(homepage, 0, 1)}

        % Enter the preferred citation text for this brain atlas version. Leave blank if citation text can be extracted from the assigned digital identifier.
        howToCite (1,1) string

        % Add one or several alternative versions to this brain atlas version.
        isAlternativeVersionOf (1,:) openminds.sands.BrainAtlasVersion ...
            {mustBeListOfUniqueItems(isAlternativeVersionOf)}

        % Add the earlier version of this brain atlas version.
        isNewVersionOf (1,:) openminds.sands.BrainAtlasVersion ...
            {mustBeSpecifiedLength(isNewVersionOf, 0, 1)}

        % Enter the identifier (IRI) of the related ontological term matching this brain atlas version.
        ontologyIdentifier (1,1) string

        % Enter the date of first publication of this brain atlas version.
        releaseDate (1,1) datetime

        % Enter a descriptive short name for this brain atlas version.
        shortName (1,1) string

        % Enter the version identifier of this brain atlas version.
        versionIdentifier (1,1) string

        % Enter a short description of the novelties/peculiarities of this brain atlas version.
        versionInnovation (1,1) string
    end

    properties (Access = protected)
        Required = ["coordinateSpace", "fullName", "hasTerminology", "releaseDate", "shortName", "versionIdentifier", "versionInnovation"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/sands/BrainAtlasVersion"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'coordinateSpace', "openminds.sands.CommonCoordinateSpace", ...
            'digitalIdentifier', "openminds.core.DOI", ...
            'hasTerminology', "openminds.sands.parcellationTerminology", ...
            'homepage', "openminds.core.URL", ...
            'isAlternativeVersionOf', "openminds.sands.BrainAtlasVersion", ...
            'isNewVersionOf', "openminds.sands.BrainAtlasVersion" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = BrainAtlasVersion(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end