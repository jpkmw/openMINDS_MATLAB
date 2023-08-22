classdef CommonCoordinateSpace < openminds.abstract.Schema
%CommonCoordinateSpace - No description available.
%
%   PROPERTIES:
%
%   anatomicalAxesOrientation : (1,1) <a href="matlab:help openminds.controlledterms.AnatomicalAxesOrientation" style="font-weight:bold">AnatomicalAxesOrientation</a>
%                               Add the axes orientation denoted in standard anatomical terms of direction (stated as XYZ) for this common coordinate space.
%
%   axesOrigin                : (1,:) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>
%                               Enter the origin of this common coordinate space (central point where axes intersect; 2D: [x, y] or 3D:[x, y, z]).
%
%   defaultImage              : (1,:) <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>
%                               Add one or several image files used as visual representation of this common coordinate space.
%
%   digitalIdentifier         : (1,1) <a href="matlab:help openminds.core.DOI" style="font-weight:bold">DOI</a>
%                               Add the globally unique and persistent digital identifier of this common coordinate space.
%
%   fullName                  : (1,1) string
%                               Enter a descriptive full name for this common coordinate space.
%
%   homepage                  : (1,1) <a href="matlab:help openminds.core.URL" style="font-weight:bold">URL</a>
%                               Add the uniform resource locator (URL) to the homepage of this common coordinate space.
%
%   howToCite                 : (1,1) string
%                               Enter the preferred citation text for this common coordinate space. Leave blank if citation text can be extracted from the assigned digital identifier.
%
%   nativeUnit                : (1,1) <a href="matlab:help openminds.controlledterms.UnitOfMeasurement" style="font-weight:bold">UnitOfMeasurement</a>
%                               Add the native unit that is used for this common coordinate space.
%
%   ontologyIdentifier        : (1,1) string
%                               Enter the identifier (IRI) of the related ontological term matching this common coordinate space.
%
%   releaseDate               : (1,1) datetime
%                               Enter the date of first publication of this common coordinate space.
%
%   shortName                 : (1,1) string
%                               Enter a descriptive short name for this common coordinate space.
%
%   versionIdentifier         : (1,1) string
%                               Enter the version identifier of this common coordinate space.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the axes orientation denoted in standard anatomical terms of direction (stated as XYZ) for this common coordinate space.
        anatomicalAxesOrientation (1,:) openminds.controlledterms.AnatomicalAxesOrientation ...
            {mustBeSpecifiedLength(anatomicalAxesOrientation, 0, 1)}

        % Enter the origin of this common coordinate space (central point where axes intersect; 2D: [x, y] or 3D:[x, y, z]).
        axesOrigin (1,:) openminds.core.QuantitativeValue ...
            {mustBeSpecifiedLength(axesOrigin, 2, 3)}

        % Add one or several image files used as visual representation of this common coordinate space.
        defaultImage (1,:) openminds.core.File ...
            {mustBeListOfUniqueItems(defaultImage)}

        % Add the globally unique and persistent digital identifier of this common coordinate space.
        digitalIdentifier (1,:) openminds.core.DOI ...
            {mustBeSpecifiedLength(digitalIdentifier, 0, 1)}

        % Enter a descriptive full name for this common coordinate space.
        fullName (1,1) string

        % Add the uniform resource locator (URL) to the homepage of this common coordinate space.
        homepage (1,:) openminds.core.URL ...
            {mustBeSpecifiedLength(homepage, 0, 1)}

        % Enter the preferred citation text for this common coordinate space. Leave blank if citation text can be extracted from the assigned digital identifier.
        howToCite (1,1) string

        % Add the native unit that is used for this common coordinate space.
        nativeUnit (1,:) openminds.controlledterms.UnitOfMeasurement ...
            {mustBeSpecifiedLength(nativeUnit, 0, 1)}

        % Enter the identifier (IRI) of the related ontological term matching this common coordinate space.
        ontologyIdentifier (1,1) string

        % Enter the date of first publication of this common coordinate space.
        releaseDate (1,1) datetime

        % Enter a descriptive short name for this common coordinate space.
        shortName (1,1) string

        % Enter the version identifier of this common coordinate space.
        versionIdentifier (1,1) string
    end

    properties (Access = protected)
        Required = ["anatomicalAxesOrientation", "axesOrigin", "fullName", "nativeUnit", "releaseDate", "shortName", "versionIdentifier"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/sands/CommonCoordinateSpace"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'anatomicalAxesOrientation', "openminds.controlledterms.AnatomicalAxesOrientation", ...
            'defaultImage', "openminds.core.File", ...
            'digitalIdentifier', "openminds.core.DOI", ...
            'homepage', "openminds.core.URL", ...
            'nativeUnit', "openminds.controlledterms.UnitOfMeasurement" ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'axesOrigin', "openminds.core.QuantitativeValue" ...
        )
    end

    methods
        function obj = CommonCoordinateSpace(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end