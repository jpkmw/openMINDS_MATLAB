classdef Optimization < openminds.abstract.Schema
%Optimization - Structured information about a process of optimizing a model or a piece of code.
%
%   PROPERTIES:
%
%   customPropertySet   : (1,:) <a href="matlab:help openminds.core.CustomPropertySet" style="font-weight:bold">CustomPropertySet</a>
%                         Add any user-defined parameters grouped in context-specific sets that are not covered in the standardized properties of this activity.
%
%   description         : (1,1) string
%                         Enter a description of this activity.
%
%   endTime             : (1,1) datetime
%                         Enter the date and/or time on when this activity ended, formatted as either '2023-02-07T16:00:00+00:00' (date-time) or '16:00:00+00:00' (time).
%
%   environment         : (1,1) <a href="matlab:help openminds.computation.Environment" style="font-weight:bold">Environment</a>, <a href="matlab:help openminds.core.WebServiceVersion" style="font-weight:bold">WebServiceVersion</a>
%                         Add the computational environment in which this computation was executed.
%
%   input               : (1,:) <a href="matlab:help openminds.computation.LocalFile" style="font-weight:bold">LocalFile</a>, <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>, <a href="matlab:help openminds.core.FileBundle" style="font-weight:bold">FileBundle</a>, <a href="matlab:help openminds.core.ModelVersion" style="font-weight:bold">ModelVersion</a>, <a href="matlab:help openminds.core.SoftwareVersion" style="font-weight:bold">SoftwareVersion</a>
%                         Add all inputs used by this activity.
%
%   launchConfiguration : (1,1) <a href="matlab:help openminds.computation.LaunchConfiguration" style="font-weight:bold">LaunchConfiguration</a>
%                         Add the launch configuration of this computation (e.g., command-line arguments).
%
%   lookupLabel         : (1,1) string
%                         Enter a lookup label for this activity that may help you to find this instance more easily.
%
%   output              : (1,:) <a href="matlab:help openminds.computation.LocalFile" style="font-weight:bold">LocalFile</a>, <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>, <a href="matlab:help openminds.core.FileBundle" style="font-weight:bold">FileBundle</a>, <a href="matlab:help openminds.core.ModelVersion" style="font-weight:bold">ModelVersion</a>
%                         Add all outputs generated by this activity.
%
%   performedBy         : (1,:) <a href="matlab:help openminds.computation.SoftwareAgent" style="font-weight:bold">SoftwareAgent</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                         Add all agents that performed this activity.
%
%   recipe              : (1,1) <a href="matlab:help openminds.computation.WorkflowRecipeVersion" style="font-weight:bold">WorkflowRecipeVersion</a>
%                         Add the workflow recipe version used for this computation.
%
%   resourceUsage       : (1,:) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>, <a href="matlab:help openminds.core.QuantitativeValueRange" style="font-weight:bold">QuantitativeValueRange</a>
%                         Enter all resources used during this computation (e.g., core-hours or energy).
%
%   startTime           : (1,1) datetime
%                         Enter the date and/or time on when this activity started, formatted as either '2023-02-07T16:00:00+00:00' (date-time) or '16:00:00+00:00' (time).
%
%   startedBy           : (1,1) <a href="matlab:help openminds.computation.SoftwareAgent" style="font-weight:bold">SoftwareAgent</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                         Add the agent that started this computation.
%
%   status              : (1,1) <a href="matlab:help openminds.controlledterms.ActionStatusType" style="font-weight:bold">ActionStatusType</a>
%                         Enter the current status of this computation.
%
%   studyTarget         : (1,:) <a href="matlab:help openminds.controlledterms.AuditoryStimulusType" style="font-weight:bold">AuditoryStimulusType</a>, <a href="matlab:help openminds.controlledterms.BiologicalOrder" style="font-weight:bold">BiologicalOrder</a>, <a href="matlab:help openminds.controlledterms.BiologicalSex" style="font-weight:bold">BiologicalSex</a>, <a href="matlab:help openminds.controlledterms.BreedingType" style="font-weight:bold">BreedingType</a>, <a href="matlab:help openminds.controlledterms.CellCultureType" style="font-weight:bold">CellCultureType</a>, <a href="matlab:help openminds.controlledterms.CellType" style="font-weight:bold">CellType</a>, <a href="matlab:help openminds.controlledterms.Disease" style="font-weight:bold">Disease</a>, <a href="matlab:help openminds.controlledterms.DiseaseModel" style="font-weight:bold">DiseaseModel</a>, <a href="matlab:help openminds.controlledterms.ElectricalStimulusType" style="font-weight:bold">ElectricalStimulusType</a>, <a href="matlab:help openminds.controlledterms.GeneticStrainType" style="font-weight:bold">GeneticStrainType</a>, <a href="matlab:help openminds.controlledterms.GustatoryStimulusType" style="font-weight:bold">GustatoryStimulusType</a>, <a href="matlab:help openminds.controlledterms.Handedness" style="font-weight:bold">Handedness</a>, <a href="matlab:help openminds.controlledterms.MolecularEntity" style="font-weight:bold">MolecularEntity</a>, <a href="matlab:help openminds.controlledterms.OlfactoryStimulusType" style="font-weight:bold">OlfactoryStimulusType</a>, <a href="matlab:help openminds.controlledterms.OpticalStimulusType" style="font-weight:bold">OpticalStimulusType</a>, <a href="matlab:help openminds.controlledterms.Organ" style="font-weight:bold">Organ</a>, <a href="matlab:help openminds.controlledterms.OrganismSubstance" style="font-weight:bold">OrganismSubstance</a>, <a href="matlab:help openminds.controlledterms.OrganismSystem" style="font-weight:bold">OrganismSystem</a>, <a href="matlab:help openminds.controlledterms.Species" style="font-weight:bold">Species</a>, <a href="matlab:help openminds.controlledterms.SubcellularEntity" style="font-weight:bold">SubcellularEntity</a>, <a href="matlab:help openminds.controlledterms.TactileStimulusType" style="font-weight:bold">TactileStimulusType</a>, <a href="matlab:help openminds.controlledterms.TermSuggestion" style="font-weight:bold">TermSuggestion</a>, <a href="matlab:help openminds.controlledterms.TissueSampleType" style="font-weight:bold">TissueSampleType</a>, <a href="matlab:help openminds.controlledterms.UBERONParcellation" style="font-weight:bold">UBERONParcellation</a>, <a href="matlab:help openminds.controlledterms.VisualStimulusType" style="font-weight:bold">VisualStimulusType</a>, <a href="matlab:help openminds.sands.CustomAnatomicalEntity" style="font-weight:bold">CustomAnatomicalEntity</a>, <a href="matlab:help openminds.sands.ParcellationEntity" style="font-weight:bold">ParcellationEntity</a>, <a href="matlab:help openminds.sands.ParcellationEntityVersion" style="font-weight:bold">ParcellationEntityVersion</a>
%                         Add all study targets of this activity.
%
%   tag                 : (1,:) string
%                         Enter any custom tags for this computation.
%
%   technique           : (1,:) <a href="matlab:help openminds.controlledterms.AnalysisTechnique" style="font-weight:bold">AnalysisTechnique</a>
%                         Add all analysis techniques that were used in this computation.
%
%   wasInformedBy       : (1,1) <a href="matlab:help openminds.computation.DataAnalysis" style="font-weight:bold">DataAnalysis</a>, <a href="matlab:help openminds.computation.DataCopy" style="font-weight:bold">DataCopy</a>, <a href="matlab:help openminds.computation.GenericComputation" style="font-weight:bold">GenericComputation</a>, <a href="matlab:help openminds.computation.ModelValidation" style="font-weight:bold">ModelValidation</a>, <a href="matlab:help openminds.computation.Optimization" style="font-weight:bold">Optimization</a>, <a href="matlab:help openminds.computation.Simulation" style="font-weight:bold">Simulation</a>, <a href="matlab:help openminds.computation.Visualization" style="font-weight:bold">Visualization</a>
%                         Add another computation that sent data to this one during runtime.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add any user-defined parameters grouped in context-specific sets that are not covered in the standardized properties of this activity.
        customPropertySet (1,:) openminds.core.CustomPropertySet ...
            {mustBeListOfUniqueItems(customPropertySet)}

        % Enter a description of this activity.
        description (1,1) string

        % Enter the date and/or time on when this activity ended, formatted as either '2023-02-07T16:00:00+00:00' (date-time) or '16:00:00+00:00' (time).
        endTime (1,1) datetime

        % Add the computational environment in which this computation was executed.
        environment (1,:) openminds.internal.mixedtype.optimization.Environment ...
            {mustBeSpecifiedLength(environment, 0, 1)}

        % Add all inputs used by this activity.
        input (1,:) openminds.internal.mixedtype.optimization.Input ...
            {mustBeListOfUniqueItems(input)}

        % Add the launch configuration of this computation (e.g., command-line arguments).
        launchConfiguration (1,:) openminds.computation.LaunchConfiguration ...
            {mustBeSpecifiedLength(launchConfiguration, 0, 1)}

        % Enter a lookup label for this activity that may help you to find this instance more easily.
        lookupLabel (1,1) string

        % Add all outputs generated by this activity.
        output (1,:) openminds.internal.mixedtype.optimization.Output ...
            {mustBeListOfUniqueItems(output)}

        % Add all agents that performed this activity.
        performedBy (1,:) openminds.internal.mixedtype.optimization.PerformedBy ...
            {mustBeListOfUniqueItems(performedBy)}

        % Add the workflow recipe version used for this computation.
        recipe (1,:) openminds.computation.WorkflowRecipeVersion ...
            {mustBeSpecifiedLength(recipe, 0, 1)}

        % Enter all resources used during this computation (e.g., core-hours or energy).
        resourceUsage (1,:) openminds.internal.mixedtype.optimization.ResourceUsage ...
            {mustBeListOfUniqueItems(resourceUsage)}

        % Enter the date and/or time on when this activity started, formatted as either '2023-02-07T16:00:00+00:00' (date-time) or '16:00:00+00:00' (time).
        startTime (1,1) datetime

        % Add the agent that started this computation.
        startedBy (1,:) openminds.internal.mixedtype.optimization.StartedBy ...
            {mustBeSpecifiedLength(startedBy, 0, 1)}

        % Enter the current status of this computation.
        status (1,:) openminds.controlledterms.ActionStatusType ...
            {mustBeSpecifiedLength(status, 0, 1)}

        % Add all study targets of this activity.
        studyTarget (1,:) openminds.internal.mixedtype.optimization.StudyTarget ...
            {mustBeListOfUniqueItems(studyTarget)}

        % Enter any custom tags for this computation.
        tag (1,:) string ...
            {mustBeListOfUniqueItems(tag)}

        % Add all analysis techniques that were used in this computation.
        technique (1,:) openminds.controlledterms.AnalysisTechnique ...
            {mustBeListOfUniqueItems(technique)}

        % Add another computation that sent data to this one during runtime.
        wasInformedBy (1,:) openminds.internal.mixedtype.optimization.WasInformedBy ...
            {mustBeSpecifiedLength(wasInformedBy, 0, 1)}
    end

    properties (Access = protected)
        Required = ["environment", "input", "output", "startTime"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/computation/Optimization"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'environment', ["openminds.computation.Environment", "openminds.core.WebServiceVersion"], ...
            'input', ["openminds.computation.LocalFile", "openminds.core.File", "openminds.core.FileBundle", "openminds.core.ModelVersion", "openminds.core.SoftwareVersion"], ...
            'launchConfiguration', "openminds.computation.LaunchConfiguration", ...
            'output', ["openminds.computation.LocalFile", "openminds.core.File", "openminds.core.FileBundle", "openminds.core.ModelVersion"], ...
            'performedBy', ["openminds.computation.SoftwareAgent", "openminds.core.Person"], ...
            'recipe', "openminds.computation.WorkflowRecipeVersion", ...
            'startedBy', ["openminds.computation.SoftwareAgent", "openminds.core.Person"], ...
            'status', "openminds.controlledterms.ActionStatusType", ...
            'studyTarget', ["openminds.controlledterms.AuditoryStimulusType", "openminds.controlledterms.BiologicalOrder", "openminds.controlledterms.BiologicalSex", "openminds.controlledterms.BreedingType", "openminds.controlledterms.CellCultureType", "openminds.controlledterms.CellType", "openminds.controlledterms.Disease", "openminds.controlledterms.DiseaseModel", "openminds.controlledterms.ElectricalStimulusType", "openminds.controlledterms.GeneticStrainType", "openminds.controlledterms.GustatoryStimulusType", "openminds.controlledterms.Handedness", "openminds.controlledterms.MolecularEntity", "openminds.controlledterms.OlfactoryStimulusType", "openminds.controlledterms.OpticalStimulusType", "openminds.controlledterms.Organ", "openminds.controlledterms.OrganismSubstance", "openminds.controlledterms.OrganismSystem", "openminds.controlledterms.Species", "openminds.controlledterms.SubcellularEntity", "openminds.controlledterms.TactileStimulusType", "openminds.controlledterms.TermSuggestion", "openminds.controlledterms.TissueSampleType", "openminds.controlledterms.UBERONParcellation", "openminds.controlledterms.VisualStimulusType", "openminds.sands.CustomAnatomicalEntity", "openminds.sands.ParcellationEntity", "openminds.sands.ParcellationEntityVersion"], ...
            'technique', "openminds.controlledterms.AnalysisTechnique", ...
            'wasInformedBy', ["openminds.computation.DataAnalysis", "openminds.computation.DataCopy", "openminds.computation.GenericComputation", "openminds.computation.ModelValidation", "openminds.computation.Optimization", "openminds.computation.Simulation", "openminds.computation.Visualization"] ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'customPropertySet', "openminds.core.CustomPropertySet", ...
            'resourceUsage', ["openminds.core.QuantitativeValue", "openminds.core.QuantitativeValueRange"] ...
        )
    end

    methods
        function obj = Optimization(varargin)
            obj@openminds.abstract.Schema(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end