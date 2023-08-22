classdef SubjectGroupState < openminds.abstract.Schema
%SubjectGroupState - No description available.
%
%   PROPERTIES:
%
%   additionalRemarks : (1,1) string
%                       Enter additional remarks about the specimen (set) in this state.
%
%   age               : (1,1) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>, <a href="matlab:help openminds.core.QuantitativeValueRange" style="font-weight:bold">QuantitativeValueRange</a>
%                       Add the age of the specimen (set) in this state.
%
%   ageCategory       : (1,:) <a href="matlab:help openminds.controlledterms.AgeCategory" style="font-weight:bold">AgeCategory</a>
%                       Add the age category of the subject in this state.
%
%   handedness        : (1,:) <a href="matlab:help openminds.controlledterms.Laterality" style="font-weight:bold">Laterality</a>
%                       Add the preferred hand of the subject in this state.
%
%   pathology         : (1,:) <a href="matlab:help openminds.controlledterms.Disease" style="font-weight:bold">Disease</a>, <a href="matlab:help openminds.controlledterms.DiseaseModel" style="font-weight:bold">DiseaseModel</a>
%                       Add the pathology of the specimen (set) in this state.
%
%   weight            : (1,1) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>, <a href="matlab:help openminds.core.QuantitativeValueRange" style="font-weight:bold">QuantitativeValueRange</a>
%                       Add the weight of the specimen (set) in this state.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter additional remarks about the specimen (set) in this state.
        additionalRemarks (1,1) string

        % Add the age of the specimen (set) in this state.
        age (1,:) openminds.internal.mixedtype.subjectgroupstate.Age ...
            {mustBeSpecifiedLength(age, 0, 1)}

        % Add the age category of the subject in this state.
        ageCategory (1,:) openminds.controlledterms.AgeCategory ...
            {mustBeListOfUniqueItems(ageCategory)}

        % Add the preferred hand of the subject in this state.
        handedness (1,:) openminds.controlledterms.Laterality ...
            {mustBeListOfUniqueItems(handedness)}

        % Add the pathology of the specimen (set) in this state.
        pathology (1,:) openminds.internal.mixedtype.subjectgroupstate.Pathology ...
            {mustBeListOfUniqueItems(pathology)}

        % Add the weight of the specimen (set) in this state.
        weight (1,:) openminds.internal.mixedtype.subjectgroupstate.Weight ...
            {mustBeSpecifiedLength(weight, 0, 1)}
    end

    properties (Access = protected)
        Required = ["ageCategory"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/SubjectGroupState"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'ageCategory', "openminds.controlledterms.AgeCategory", ...
            'handedness', "openminds.controlledterms.Laterality", ...
            'pathology', ["openminds.controlledterms.Disease", "openminds.controlledterms.DiseaseModel"] ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'age', ["openminds.core.QuantitativeValue", "openminds.core.QuantitativeValueRange"], ...
            'weight', ["openminds.core.QuantitativeValue", "openminds.core.QuantitativeValueRange"] ...
        )
    end

    methods
        function obj = SubjectGroupState(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.lookupLabel);
        end
    end

end