classdef TissueSampleCollection < openminds.abstract.Schema
%TissueSampleCollection - No description available.
%
%   PROPERTIES:
%
%   additionalRemarks     : (1,1) string
%                           Enter any additional remarks concering this specimen set.
%
%   anatomicalLocation    : (1,:) <a href="matlab:help openminds.controlledterms.CellType" style="font-weight:bold">CellType</a>, <a href="matlab:help openminds.controlledterms.Organ" style="font-weight:bold">Organ</a>, <a href="matlab:help openminds.controlledterms.OrganismSubstance" style="font-weight:bold">OrganismSubstance</a>, <a href="matlab:help openminds.controlledterms.SubcellularEntity" style="font-weight:bold">SubcellularEntity</a>, <a href="matlab:help openminds.controlledterms.UBERONParcellation" style="font-weight:bold">UBERONParcellation</a>, <a href="matlab:help openminds.sands.CustomAnatomicalEntity" style="font-weight:bold">CustomAnatomicalEntity</a>, <a href="matlab:help openminds.sands.ParcellationEntity" style="font-weight:bold">ParcellationEntity</a>, <a href="matlab:help openminds.sands.ParcellationEntityVersion" style="font-weight:bold">ParcellationEntityVersion</a>
%                           Add all anatomical entities that describe the anatomical location of this tissue sample collection.
%
%   biologicalSex         : (1,:) <a href="matlab:help openminds.controlledterms.BiologicalSex" style="font-weight:bold">BiologicalSex</a>
%                           Add the biological sex of all specimen in this set.
%
%   internalIdentifier    : (1,1) string
%                           Enter the identifier (or label) of this specimen set that is used within the corresponding data files to identify this specimen set.
%
%   laterality            : (1,:) <a href="matlab:help openminds.controlledterms.Laterality" style="font-weight:bold">Laterality</a>
%                           Add one or both sides of the body, bilateral organ or bilateral organ part that this tissue sample collection originates from.
%
%   lookupLabel           : (1,1) string
%                           Enter a lookup label for this specimen set that may help you to find this instance more easily.
%
%   numberOfTissueSamples : (1,1) int64
%                           Enter the number of tissue samples that belong to this tissue sample collection.
%
%   origin                : (1,:) <a href="matlab:help openminds.controlledterms.CellType" style="font-weight:bold">CellType</a>, <a href="matlab:help openminds.controlledterms.Organ" style="font-weight:bold">Organ</a>, <a href="matlab:help openminds.controlledterms.OrganismSubstance" style="font-weight:bold">OrganismSubstance</a>
%                           Add the biogical origin of all tissue samples in this collection.
%
%   species               : (1,:) <a href="matlab:help openminds.controlledterms.Species" style="font-weight:bold">Species</a>, <a href="matlab:help openminds.core.Strain" style="font-weight:bold">Strain</a>
%                           Add the species and/or strain (a sub-type of a genetic variant of species) of all specimen in this set.
%
%   studiedState          : (1,:) <a href="matlab:help openminds.core.TissueSampleCollectionState" style="font-weight:bold">TissueSampleCollectionState</a>
%                           Add all states in which this tissue sample collection was studied.
%
%   type                  : (1,:) <a href="matlab:help openminds.controlledterms.TissueSampleType" style="font-weight:bold">TissueSampleType</a>
%                           Add the type of all tissue samples in this collection.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter any additional remarks concering this specimen set.
        additionalRemarks (1,1) string

        % Add all anatomical entities that describe the anatomical location of this tissue sample collection.
        anatomicalLocation (1,:) openminds.internal.mixedtype.tissuesamplecollection.AnatomicalLocation ...
            {mustBeListOfUniqueItems(anatomicalLocation)}

        % Add the biological sex of all specimen in this set.
        biologicalSex (1,:) openminds.controlledterms.BiologicalSex ...
            {mustBeListOfUniqueItems(biologicalSex)}

        % Enter the identifier (or label) of this specimen set that is used within the corresponding data files to identify this specimen set.
        internalIdentifier (1,1) string

        % Add one or both sides of the body, bilateral organ or bilateral organ part that this tissue sample collection originates from.
        laterality (1,:) openminds.controlledterms.Laterality ...
            {mustBeSpecifiedLength(laterality, 1, 2)}

        % Enter a lookup label for this specimen set that may help you to find this instance more easily.
        lookupLabel (1,1) string

        % Enter the number of tissue samples that belong to this tissue sample collection.
        numberOfTissueSamples (1,:) int64 ...
            {mustBeSpecifiedLength(numberOfTissueSamples, 0, 1), mustBeInteger(numberOfTissueSamples), mustBeGreaterThanOrEqual(numberOfTissueSamples, 2)}

        % Add the biogical origin of all tissue samples in this collection.
        origin (1,:) openminds.internal.mixedtype.tissuesamplecollection.Origin ...
            {mustBeListOfUniqueItems(origin)}

        % Add the species and/or strain (a sub-type of a genetic variant of species) of all specimen in this set.
        species (1,:) openminds.internal.mixedtype.tissuesamplecollection.Species ...
            {mustBeListOfUniqueItems(species)}

        % Add all states in which this tissue sample collection was studied.
        studiedState (1,:) openminds.core.TissueSampleCollectionState ...
            {mustBeListOfUniqueItems(studiedState)}

        % Add the type of all tissue samples in this collection.
        type (1,:) openminds.controlledterms.TissueSampleType ...
            {mustBeListOfUniqueItems(type)}
    end

    properties (Access = protected)
        Required = ["origin", "species", "studiedState", "type"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/TissueSampleCollection"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'anatomicalLocation', ["openminds.controlledterms.CellType", "openminds.controlledterms.Organ", "openminds.controlledterms.OrganismSubstance", "openminds.controlledterms.SubcellularEntity", "openminds.controlledterms.UBERONParcellation", "openminds.sands.CustomAnatomicalEntity", "openminds.sands.ParcellationEntity", "openminds.sands.ParcellationEntityVersion"], ...
            'biologicalSex', "openminds.controlledterms.BiologicalSex", ...
            'laterality', "openminds.controlledterms.Laterality", ...
            'origin', ["openminds.controlledterms.CellType", "openminds.controlledterms.Organ", "openminds.controlledterms.OrganismSubstance"], ...
            'species', ["openminds.controlledterms.Species", "openminds.core.Strain"], ...
            'studiedState', "openminds.core.TissueSampleCollectionState", ...
            'type', "openminds.controlledterms.TissueSampleType" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = TissueSampleCollection(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.lookupLabel);
        end
    end

end