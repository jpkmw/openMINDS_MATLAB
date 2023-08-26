classdef QualitativeRelationAssessment < openminds.abstract.Schema
%QualitativeRelationAssessment - No description available.
%
%   PROPERTIES:
%
%   criteria           : (1,1) <a href="matlab:help openminds.core.ProtocolExecution" style="font-weight:bold">ProtocolExecution</a>
%                        Add the protocol execution defining the criteria that were applied to determine this relation.
%
%   inRelationTo       : (1,1) <a href="matlab:help openminds.sands.ParcellationEntity" style="font-weight:bold">ParcellationEntity</a>
%                        Add the anatomical entity to which the relation is described.
%
%   qualitativeOverlap : (1,1) <a href="matlab:help openminds.controlledterms.QualitativeOverlap" style="font-weight:bold">QualitativeOverlap</a>
%                        Add the qualitative overlap that best describes the relation between the two anatomical entities.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the protocol execution defining the criteria that were applied to determine this relation.
        criteria (1,:) openminds.core.ProtocolExecution ...
            {mustBeSpecifiedLength(criteria, 0, 1)}

        % Add the anatomical entity to which the relation is described.
        inRelationTo (1,:) openminds.sands.ParcellationEntity ...
            {mustBeSpecifiedLength(inRelationTo, 0, 1)}

        % Add the qualitative overlap that best describes the relation between the two anatomical entities.
        qualitativeOverlap (1,:) openminds.controlledterms.QualitativeOverlap ...
            {mustBeSpecifiedLength(qualitativeOverlap, 0, 1)}
    end

    properties (Access = protected)
        Required = ["inRelationTo", "qualitativeOverlap"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/sands/QualitativeRelationAssessment"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'criteria', "openminds.core.ProtocolExecution", ...
            'inRelationTo', "openminds.sands.ParcellationEntity", ...
            'qualitativeOverlap', "openminds.controlledterms.QualitativeOverlap" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = QualitativeRelationAssessment(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end