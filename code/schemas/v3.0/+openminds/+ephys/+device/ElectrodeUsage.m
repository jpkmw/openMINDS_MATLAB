classdef ElectrodeUsage < openminds.abstract.Schema
%ElectrodeUsage - No description available.
%
%   PROPERTIES:
%
%   anatomicalLocation : (1,1) <a href="matlab:help openminds.controlledterms.CellType" style="font-weight:bold">CellType</a>, <a href="matlab:help openminds.controlledterms.Organ" style="font-weight:bold">Organ</a>, <a href="matlab:help openminds.controlledterms.OrganismSubstance" style="font-weight:bold">OrganismSubstance</a>, <a href="matlab:help openminds.controlledterms.SubcellularEntity" style="font-weight:bold">SubcellularEntity</a>, <a href="matlab:help openminds.controlledterms.UBERONParcellation" style="font-weight:bold">UBERONParcellation</a>, <a href="matlab:help openminds.sands.CustomAnatomicalEntity" style="font-weight:bold">CustomAnatomicalEntity</a>, <a href="matlab:help openminds.sands.ParcellationEntity" style="font-weight:bold">ParcellationEntity</a>, <a href="matlab:help openminds.sands.ParcellationEntityVersion" style="font-weight:bold">ParcellationEntityVersion</a>
%                        Add the anatomical entity that semantically best describes the anatomical location of the electrode contact.
%
%   contactResistance  : (1,1) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>, <a href="matlab:help openminds.core.QuantitativeValueRange" style="font-weight:bold">QuantitativeValueRange</a>
%                        Enter the contact resistance of this electrode during its use.
%
%   device             : (1,1) <a href="matlab:help openminds.ephys.Electrode" style="font-weight:bold">Electrode</a>
%                        Add the electrode used.
%
%   lookupLabel        : (1,1) string
%                        Enter a lookup label for this device usage that may help you to find this instance more easily.
%
%   metadataLocation   : (1,:) <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>, <a href="matlab:help openminds.core.FileBundle" style="font-weight:bold">FileBundle</a>
%                        Add all files or file bundles containing additional information about the usage of this device.
%
%   spatialLocation    : (1,1) <a href="matlab:help openminds.sands.CoordinatePoint" style="font-weight:bold">CoordinatePoint</a>
%                        Add the coordinate point that best describes the spatial location of the electrode contact during its use.
%
%   usedSpecimen       : (1,1) <a href="matlab:help openminds.core.SubjectState" style="font-weight:bold">SubjectState</a>, <a href="matlab:help openminds.core.TissueSampleState" style="font-weight:bold">TissueSampleState</a>
%                        Add the state of the tissue sample or subject that this device was used on.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the anatomical entity that semantically best describes the anatomical location of the electrode contact.
        anatomicalLocation (1,:) openminds.internal.mixedtype.electrodeusage.AnatomicalLocation ...
            {mustBeSpecifiedLength(anatomicalLocation, 0, 1)}

        % Enter the contact resistance of this electrode during its use.
        contactResistance (1,:) openminds.internal.mixedtype.electrodeusage.ContactResistance ...
            {mustBeSpecifiedLength(contactResistance, 0, 1)}

        % Add the electrode used.
        device (1,:) openminds.ephys.Electrode ...
            {mustBeSpecifiedLength(device, 0, 1)}

        % Enter a lookup label for this device usage that may help you to find this instance more easily.
        lookupLabel (1,1) string

        % Add all files or file bundles containing additional information about the usage of this device.
        metadataLocation (1,:) openminds.internal.mixedtype.electrodeusage.MetadataLocation ...
            {mustBeListOfUniqueItems(metadataLocation)}

        % Add the coordinate point that best describes the spatial location of the electrode contact during its use.
        spatialLocation (1,:) openminds.sands.CoordinatePoint ...
            {mustBeSpecifiedLength(spatialLocation, 0, 1)}

        % Add the state of the tissue sample or subject that this device was used on.
        usedSpecimen (1,:) openminds.internal.mixedtype.electrodeusage.UsedSpecimen ...
            {mustBeSpecifiedLength(usedSpecimen, 0, 1)}
    end

    properties (Access = protected)
        Required = ["device"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/ephys/ElectrodeUsage"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'anatomicalLocation', ["openminds.controlledterms.CellType", "openminds.controlledterms.Organ", "openminds.controlledterms.OrganismSubstance", "openminds.controlledterms.SubcellularEntity", "openminds.controlledterms.UBERONParcellation", "openminds.sands.CustomAnatomicalEntity", "openminds.sands.ParcellationEntity", "openminds.sands.ParcellationEntityVersion"], ...
            'device', "openminds.ephys.Electrode", ...
            'metadataLocation', ["openminds.core.File", "openminds.core.FileBundle"], ...
            'usedSpecimen', ["openminds.core.SubjectState", "openminds.core.TissueSampleState"] ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'contactResistance', ["openminds.core.QuantitativeValue", "openminds.core.QuantitativeValueRange"], ...
            'spatialLocation', "openminds.sands.CoordinatePoint" ...
        )
    end

    methods
        function obj = ElectrodeUsage(varargin)
            obj@openminds.abstract.Schema(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end