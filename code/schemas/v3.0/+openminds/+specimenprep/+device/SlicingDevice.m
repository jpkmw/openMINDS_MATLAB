classdef SlicingDevice < openminds.abstract.Schema
%SlicingDevice - No description available.
%
%   PROPERTIES:
%
%   description       : (1,1) string
%                       Enter a short text describing this device.
%
%   deviceType        : (1,1) <a href="matlab:help openminds.controlledterms.DeviceType" style="font-weight:bold">DeviceType</a>
%                       Add the type of this device.
%
%   digitalIdentifier : (1,1) <a href="matlab:help openminds.core.DOI" style="font-weight:bold">DOI</a>, <a href="matlab:help openminds.core.RRID" style="font-weight:bold">RRID</a>
%                       Add the globally unique and persistent digital identifier of this device.
%
%   lookupLabel       : (1,1) string
%                       Enter a lookup label for this device that may help you to find this instance more easily.
%
%   manufacturer      : (1,:) <a href="matlab:help openminds.core.Consortium" style="font-weight:bold">Consortium</a>, <a href="matlab:help openminds.core.Organization" style="font-weight:bold">Organization</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                       Add the manufacturer (private or industrial) that constructed this device.
%
%   name              : (1,1) string
%                       Enter a descriptive name for this device, preferably including the model name as defined by the manufacturer.
%
%   owner             : (1,:) <a href="matlab:help openminds.core.Consortium" style="font-weight:bold">Consortium</a>, <a href="matlab:help openminds.core.Organization" style="font-weight:bold">Organization</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                       Add all parties that legally own this device.
%
%   serialNumber      : (1,1) string
%                       Enter the serial number of this device.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter a short text describing this device.
        description (1,1) string

        % Add the type of this device.
        deviceType (1,:) openminds.controlledterms.DeviceType ...
            {mustBeSpecifiedLength(deviceType, 0, 1)}

        % Add the globally unique and persistent digital identifier of this device.
        digitalIdentifier (1,:) openminds.internal.mixedtype.slicingdevice.DigitalIdentifier ...
            {mustBeSpecifiedLength(digitalIdentifier, 0, 1)}

        % Enter a lookup label for this device that may help you to find this instance more easily.
        lookupLabel (1,1) string

        % Add the manufacturer (private or industrial) that constructed this device.
        manufacturer (1,:) openminds.internal.mixedtype.slicingdevice.Manufacturer ...
            {mustBeListOfUniqueItems(manufacturer)}

        % Enter a descriptive name for this device, preferably including the model name as defined by the manufacturer.
        name (1,1) string

        % Add all parties that legally own this device.
        owner (1,:) openminds.internal.mixedtype.slicingdevice.Owner ...
            {mustBeListOfUniqueItems(owner)}

        % Enter the serial number of this device.
        serialNumber (1,1) string
    end

    properties (Access = protected)
        Required = ["deviceType", "name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/specimenPrep/SlicingDevice"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'deviceType', "openminds.controlledterms.DeviceType", ...
            'digitalIdentifier', ["openminds.core.DOI", "openminds.core.RRID"], ...
            'manufacturer', ["openminds.core.Consortium", "openminds.core.Organization", "openminds.core.Person"], ...
            'owner', ["openminds.core.Consortium", "openminds.core.Organization", "openminds.core.Person"] ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = SlicingDevice(varargin)
            obj@openminds.abstract.Schema(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end