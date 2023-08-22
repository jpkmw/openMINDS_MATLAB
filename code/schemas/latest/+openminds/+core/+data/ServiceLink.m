classdef ServiceLink < openminds.abstract.Schema
%ServiceLink - No description available.
%
%   PROPERTIES:
%
%   dataLocation : (1,1) <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>, <a href="matlab:help openminds.core.FileArchive" style="font-weight:bold">FileArchive</a>, <a href="matlab:help openminds.core.FileBundle" style="font-weight:bold">FileBundle</a>, <a href="matlab:help openminds.core.ModelVersion" style="font-weight:bold">ModelVersion</a>, <a href="matlab:help openminds.publications.LivePaperResourceItem" style="font-weight:bold">LivePaperResourceItem</a>, <a href="matlab:help openminds.sands.ParcellationEntityVersion" style="font-weight:bold">ParcellationEntityVersion</a>
%                  Add the location of the data that are linked to this specific service (e.g., stored as file (bundles) or registered as other entities such as atlas annotations).
%
%   displayLabel : (1,1) string
%                  Enter a display label for this service link.
%
%   openDataIn   : (1,1) string
%                  Enter the internationalized resource identifier (IRI) to the linked data in the specified service.
%
%   previewImage : (1,1) <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>
%                  Add an image file to this service link that acts as a preview of its content or could function as an icon.
%
%   service      : (1,1) <a href="matlab:help openminds.controlledterms.Service" style="font-weight:bold">Service</a>
%                  Add the service in which the specified data can be opened.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the location of the data that are linked to this specific service (e.g., stored as file (bundles) or registered as other entities such as atlas annotations).
        dataLocation (1,:) openminds.internal.mixedtype.servicelink.DataLocation ...
            {mustBeSpecifiedLength(dataLocation, 0, 1)}

        % Enter a display label for this service link.
        displayLabel (1,1) string

        % Enter the internationalized resource identifier (IRI) to the linked data in the specified service.
        openDataIn (1,1) string

        % Add an image file to this service link that acts as a preview of its content or could function as an icon.
        previewImage (1,:) openminds.core.File ...
            {mustBeSpecifiedLength(previewImage, 0, 1)}

        % Add the service in which the specified data can be opened.
        service (1,:) openminds.controlledterms.Service ...
            {mustBeSpecifiedLength(service, 0, 1)}
    end

    properties (Access = protected)
        Required = ["dataLocation", "openDataIn", "service"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/core/ServiceLink"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'dataLocation', ["openminds.core.File", "openminds.core.FileArchive", "openminds.core.FileBundle", "openminds.core.ModelVersion", "openminds.publications.LivePaperResourceItem", "openminds.sands.ParcellationEntityVersion"], ...
            'previewImage', "openminds.core.File", ...
            'service', "openminds.controlledterms.Service" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = ServiceLink(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)
            str = sprintf('%s', obj.displayLabel);
        end
    end

end