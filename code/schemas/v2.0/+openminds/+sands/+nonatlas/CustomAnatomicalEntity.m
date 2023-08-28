classdef CustomAnatomicalEntity < openminds.abstract.Schema
%CustomAnatomicalEntity - No description available.
%
%   PROPERTIES:
%
%   hasAnnotation      : (1,1) <a href="matlab:help openminds.sands.CustomAnnotation" style="font-weight:bold">CustomAnnotation</a>
%                        Add the custom annotation which this custom anatomical entity defines.
%
%   name               : (1,1) string
%                        Enter a descriptive name for this custom anatomical entity.
%
%   relationAssessment : (1,:) <a href="matlab:help openminds.sands.QualitativeRelationAssessment" style="font-weight:bold">QualitativeRelationAssessment</a>, <a href="matlab:help openminds.sands.QuantitativeRelationAssessment" style="font-weight:bold">QuantitativeRelationAssessment</a>
%                        Add one or several relations of this custom anatomical entity to parcellation entities used in defined parcellation terminologies.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the custom annotation which this custom anatomical entity defines.
        hasAnnotation (1,:) openminds.sands.CustomAnnotation ...
            {mustBeSpecifiedLength(hasAnnotation, 0, 1)}

        % Enter a descriptive name for this custom anatomical entity.
        name (1,1) string

        % Add one or several relations of this custom anatomical entity to parcellation entities used in defined parcellation terminologies.
        relationAssessment (1,:) openminds.internal.mixedtype.customanatomicalentity.RelationAssessment ...
            {mustBeListOfUniqueItems(relationAssessment)}
    end

    properties (Access = protected)
        Required = ["name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/sands/CustomAnatomicalEntity"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'hasAnnotation', "openminds.sands.CustomAnnotation" ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'relationAssessment', ["openminds.sands.QualitativeRelationAssessment", "openminds.sands.QuantitativeRelationAssessment"] ...
        )
    end

    methods
        function obj = CustomAnatomicalEntity(varargin)
            obj@openminds.abstract.Schema(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end