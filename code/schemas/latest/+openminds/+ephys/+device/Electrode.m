classdef Electrode < openminds.abstract.Schema
%Electrode - No description available.
%
%   PROPERTIES:
%
%   conductorMaterial   : (1,1) <a href="matlab:help openminds.chemicals.ChemicalMixture" style="font-weight:bold">ChemicalMixture</a>, <a href="matlab:help openminds.chemicals.ChemicalSubstance" style="font-weight:bold">ChemicalSubstance</a>, <a href="matlab:help openminds.controlledterms.MolecularEntity" style="font-weight:bold">MolecularEntity</a>
%                         Add the conductor material of this electrode.
%
%   description         : (1,1) string
%                         Enter a short text describing this device.
%
%   deviceType          : (1,1) <a href="matlab:help openminds.controlledterms.DeviceType" style="font-weight:bold">DeviceType</a>
%                         Add the type of this device.
%
%   digitalIdentifier   : (1,1) <a href="matlab:help openminds.core.DOI" style="font-weight:bold">DOI</a>, <a href="matlab:help openminds.core.RRID" style="font-weight:bold">RRID</a>
%                         Add the globally unique and persistent digital identifier of this device.
%
%   insulatorMaterial   : (1,1) <a href="matlab:help openminds.chemicals.ChemicalMixture" style="font-weight:bold">ChemicalMixture</a>, <a href="matlab:help openminds.chemicals.ChemicalSubstance" style="font-weight:bold">ChemicalSubstance</a>, <a href="matlab:help openminds.controlledterms.MolecularEntity" style="font-weight:bold">MolecularEntity</a>
%                         Add the insulator material of this electrode.
%
%   internalIdentifier  : (1,1) string
%                         Enter the identifier (or label) of this electrode that is used within the corresponding data files to identify this electrode.
%
%   intrinsicResistance : (1,1) <a href="matlab:help openminds.core.QuantitativeValue" style="font-weight:bold">QuantitativeValue</a>, <a href="matlab:help openminds.core.QuantitativeValueRange" style="font-weight:bold">QuantitativeValueRange</a>
%                         Enter the intrinsic resistance of this electrode.
%
%   lookupLabel         : (1,1) string
%                         Enter a lookup label for this device that may help you to find this instance more easily.
%
%   manufacturer        : (1,:) <a href="matlab:help openminds.core.Consortium" style="font-weight:bold">Consortium</a>, <a href="matlab:help openminds.core.Organization" style="font-weight:bold">Organization</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                         Add the manufacturer (private or industrial) that constructed this device.
%
%   name                : (1,1) string
%                         Enter a descriptive name for this device, preferably including the model name as defined by the manufacturer.
%
%   owner               : (1,:) <a href="matlab:help openminds.core.Consortium" style="font-weight:bold">Consortium</a>, <a href="matlab:help openminds.core.Organization" style="font-weight:bold">Organization</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                         Add all parties that legally own this device.
%
%   serialNumber        : (1,1) string
%                         Enter the serial number of this device.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the conductor material of this electrode.
        conductorMaterial (1,:) openminds.internal.mixedtype.electrode.ConductorMaterial ...
            {mustBeSpecifiedLength(conductorMaterial, 0, 1)}

        % Enter a short text describing this device.
        description (1,1) string

        % Add the type of this device.
        deviceType (1,:) openminds.controlledterms.DeviceType ...
            {mustBeSpecifiedLength(deviceType, 0, 1)}

        % Add the globally unique and persistent digital identifier of this device.
        digitalIdentifier (1,:) openminds.internal.mixedtype.electrode.DigitalIdentifier ...
            {mustBeSpecifiedLength(digitalIdentifier, 0, 1)}

        % Add the insulator material of this electrode.
        insulatorMaterial (1,:) openminds.internal.mixedtype.electrode.InsulatorMaterial ...
            {mustBeSpecifiedLength(insulatorMaterial, 0, 1)}

        % Enter the identifier (or label) of this electrode that is used within the corresponding data files to identify this electrode.
        internalIdentifier (1,1) string

        % Enter the intrinsic resistance of this electrode.
        intrinsicResistance (1,:) openminds.internal.mixedtype.electrode.IntrinsicResistance ...
            {mustBeSpecifiedLength(intrinsicResistance, 0, 1)}

        % Enter a lookup label for this device that may help you to find this instance more easily.
        lookupLabel (1,1) string

        % Add the manufacturer (private or industrial) that constructed this device.
        manufacturer (1,:) openminds.internal.mixedtype.electrode.Manufacturer ...
            {mustBeListOfUniqueItems(manufacturer)}

        % Enter a descriptive name for this device, preferably including the model name as defined by the manufacturer.
        name (1,1) string

        % Add all parties that legally own this device.
        owner (1,:) openminds.internal.mixedtype.electrode.Owner ...
            {mustBeListOfUniqueItems(owner)}

        % Enter the serial number of this device.
        serialNumber (1,1) string
    end

    properties (Access = protected)
        Required = ["deviceType", "name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/ephys/Electrode"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'conductorMaterial', ["openminds.chemicals.ChemicalMixture", "openminds.chemicals.ChemicalSubstance", "openminds.controlledterms.MolecularEntity"], ...
            'deviceType', "openminds.controlledterms.DeviceType", ...
            'digitalIdentifier', ["openminds.core.DOI", "openminds.core.RRID"], ...
            'insulatorMaterial', ["openminds.chemicals.ChemicalMixture", "openminds.chemicals.ChemicalSubstance", "openminds.controlledterms.MolecularEntity"], ...
            'manufacturer', ["openminds.core.Consortium", "openminds.core.Organization", "openminds.core.Person"], ...
            'owner', ["openminds.core.Consortium", "openminds.core.Organization", "openminds.core.Person"] ...
        )
        EMBEDDED_PROPERTIES = struct(...
            'intrinsicResistance', ["openminds.core.QuantitativeValue", "openminds.core.QuantitativeValueRange"] ...
        )
    end

    methods
        function obj = Electrode(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end