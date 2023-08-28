classdef TissueSampleCollection < openminds.abstract.Schema
%TissueSampleCollection - No description available.
%
%   PROPERTIES:
%
%   biologicalSex      : (1,:) <a href="matlab:help openminds.controlledterms.BiologicalSex" style="font-weight:bold">BiologicalSex</a>
%                        Add the biological sex of all specimen in this set.
%
%   genotype           : (1,:) <a href="matlab:help openminds.controlledterms.Genotype" style="font-weight:bold">Genotype</a>
%                        Add the genotype of all specimen in this set.
%
%   internalIdentifier : (1,1) string
%                        Enter the identifier of this specimen set that is used within the corresponding data.
%
%   laterality         : (1,:) <a href="matlab:help openminds.controlledterms.Laterality" style="font-weight:bold">Laterality</a>
%                        Add one or both hemisphere sides from which the tissue samples in this collection originate from.
%
%   origin             : (1,:) <a href="matlab:help openminds.controlledterms.CellType" style="font-weight:bold">CellType</a>, <a href="matlab:help openminds.controlledterms.Organ" style="font-weight:bold">Organ</a>
%                        Add the biogical origin (organ or cell type) of all tissue samples in this collection.
%
%   phenotype          : (1,:) <a href="matlab:help openminds.controlledterms.Phenotype" style="font-weight:bold">Phenotype</a>
%                        Add the phenotype of all specimen in this set.
%
%   quantity           : (1,1) int64
%                        Enter the number of specimen that belong to this set.
%
%   species            : (1,:) <a href="matlab:help openminds.controlledterms.Species" style="font-weight:bold">Species</a>
%                        Add the species of all specimen in this set.
%
%   strain             : (1,:) <a href="matlab:help openminds.controlledterms.Strain" style="font-weight:bold">Strain</a>
%                        Add the strain of all specimen in this set.
%
%   studiedState       : (1,:) <a href="matlab:help openminds.core.TissueSampleCollectionState" style="font-weight:bold">TissueSampleCollectionState</a>
%                        Add all states in which this tissue sample collection was studied.
%
%   type               : (1,:) <a href="matlab:help openminds.controlledterms.TissueSampleType" style="font-weight:bold">TissueSampleType</a>
%                        Add the type of all tissue samples in this collection.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the biological sex of all specimen in this set.
        biologicalSex (1,:) openminds.controlledterms.BiologicalSex ...
            {mustBeListOfUniqueItems(biologicalSex)}

        % Add the genotype of all specimen in this set.
        genotype (1,:) openminds.controlledterms.Genotype ...
            {mustBeListOfUniqueItems(genotype)}

        % Enter the identifier of this specimen set that is used within the corresponding data.
        internalIdentifier (1,1) string

        % Add one or both hemisphere sides from which the tissue samples in this collection originate from.
        laterality (1,:) openminds.controlledterms.Laterality ...
            {mustBeSpecifiedLength(laterality, 1, 2)}

        % Add the biogical origin (organ or cell type) of all tissue samples in this collection.
        origin (1,:) openminds.internal.mixedtype.tissuesamplecollection.Origin ...
            {mustBeListOfUniqueItems(origin)}

        % Add the phenotype of all specimen in this set.
        phenotype (1,:) openminds.controlledterms.Phenotype ...
            {mustBeListOfUniqueItems(phenotype)}

        % Enter the number of specimen that belong to this set.
        quantity (1,:) int64 ...
            {mustBeSpecifiedLength(quantity, 0, 1)}

        % Add the species of all specimen in this set.
        species (1,:) openminds.controlledterms.Species ...
            {mustBeListOfUniqueItems(species)}

        % Add the strain of all specimen in this set.
        strain (1,:) openminds.controlledterms.Strain ...
            {mustBeListOfUniqueItems(strain)}

        % Add all states in which this tissue sample collection was studied.
        studiedState (1,:) openminds.core.TissueSampleCollectionState ...
            {mustBeListOfUniqueItems(studiedState)}

        % Add the type of all tissue samples in this collection.
        type (1,:) openminds.controlledterms.TissueSampleType ...
            {mustBeListOfUniqueItems(type)}
    end

    properties (Access = protected)
        Required = ["biologicalSex", "origin", "species", "studiedState", "type"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/TissueSampleCollection"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'biologicalSex', "openminds.controlledterms.BiologicalSex", ...
            'genotype', "openminds.controlledterms.Genotype", ...
            'laterality', "openminds.controlledterms.Laterality", ...
            'origin', ["openminds.controlledterms.CellType", "openminds.controlledterms.Organ"], ...
            'phenotype', "openminds.controlledterms.Phenotype", ...
            'species', "openminds.controlledterms.Species", ...
            'strain', "openminds.controlledterms.Strain", ...
            'studiedState', "openminds.core.TissueSampleCollectionState", ...
            'type', "openminds.controlledterms.TissueSampleType" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = TissueSampleCollection(varargin)
            obj@openminds.abstract.Schema(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.lookupLabel);
        end
    end

end