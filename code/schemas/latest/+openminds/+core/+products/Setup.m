classdef Setup < openminds.abstract.Schema
%Setup - No description available.
%
%   PROPERTIES:
%
%   description  : (1,1) string
%                  Enter a short text describing this setup.
%
%   hasPart      : (1,:) <a href="matlab:help openminds.core.Setup" style="font-weight:bold">Setup</a>, <a href="matlab:help openminds.core.SoftwareVersion" style="font-weight:bold">SoftwareVersion</a>, <a href="matlab:help openminds.ephys.Electrode" style="font-weight:bold">Electrode</a>, <a href="matlab:help openminds.ephys.ElectrodeArray" style="font-weight:bold">ElectrodeArray</a>, <a href="matlab:help openminds.ephys.Pipette" style="font-weight:bold">Pipette</a>, <a href="matlab:help openminds.specimenprep.SlicingDevice" style="font-weight:bold">SlicingDevice</a>
%                  Add all components, including other setups, that are part of this setup. Note that a setup should not be only composed of software.
%
%   location     : (1,1) string
%                  Enter the geographic location of this setup. This may include room number, building, institution and/or city.
%
%   manufacturer : (1,:) <a href="matlab:help openminds.core.Consortium" style="font-weight:bold">Consortium</a>, <a href="matlab:help openminds.core.Organization" style="font-weight:bold">Organization</a>, <a href="matlab:help openminds.core.Person" style="font-weight:bold">Person</a>
%                  Add the manufacturer (private or industrial) that constructed this setup.
%
%   name         : (1,1) string
%                  Enter a descriptive name for this setup.
%
%   type         : (1,:) <a href="matlab:help openminds.controlledterms.SetupType" style="font-weight:bold">SetupType</a>
%                  Add all types that describe this setup.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Enter a short text describing this setup.
        description (1,1) string

        % Add all components, including other setups, that are part of this setup. Note that a setup should not be only composed of software.
        hasPart (1,:) openminds.internal.mixedtype.setup.HasPart ...
            {mustBeListOfUniqueItems(hasPart)}

        % Enter the geographic location of this setup. This may include room number, building, institution and/or city.
        location (1,1) string

        % Add the manufacturer (private or industrial) that constructed this setup.
        manufacturer (1,:) openminds.internal.mixedtype.setup.Manufacturer ...
            {mustBeListOfUniqueItems(manufacturer)}

        % Enter a descriptive name for this setup.
        name (1,1) string

        % Add all types that describe this setup.
        type (1,:) openminds.controlledterms.SetupType ...
            {mustBeListOfUniqueItems(type)}
    end

    properties (Access = protected)
        Required = ["description", "hasPart", "name"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/Setup"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'hasPart', ["openminds.core.Setup", "openminds.core.SoftwareVersion", "openminds.ephys.Electrode", "openminds.ephys.ElectrodeArray", "openminds.ephys.Pipette", "openminds.specimenprep.SlicingDevice"], ...
            'manufacturer', ["openminds.core.Consortium", "openminds.core.Organization", "openminds.core.Person"], ...
            'type', "openminds.controlledterms.SetupType" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = Setup(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end