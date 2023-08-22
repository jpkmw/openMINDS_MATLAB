classdef ParcellationTerminologyVersion < openminds.abstract.Schema
%ParcellationTerminologyVersion - No description available.
%
%   PROPERTIES:
%
%   dataLocation       : (1,:) <a href="matlab:help openminds.core.File" style="font-weight:bold">File</a>
%                        Add the location of all files in which this parcellation terminology version is stored.
%
%   hasEntity          : (1,:) <a href="matlab:help openminds.sands.ParcellationEntityVersion" style="font-weight:bold">ParcellationEntityVersion</a>
%                        Add all parcellation entity versions which belong to this parcellation terminology version.
%
%   ontologyIdentifier : (1,:) string
%                        Enter the internationalized resource identifiers (IRIs) to the related ontological terms matching this parcellation terminology version.

%   This class was auto-generated by the openMINDS pipeline

    properties
        % Add the location of all files in which this parcellation terminology version is stored.
        dataLocation (1,:) openminds.core.File ...
            {mustBeListOfUniqueItems(dataLocation)}

        % Add all parcellation entity versions which belong to this parcellation terminology version.
        hasEntity (1,:) openminds.sands.ParcellationEntityVersion ...
            {mustBeListOfUniqueItems(hasEntity)}

        % Enter the internationalized resource identifiers (IRIs) to the related ontological terms matching this parcellation terminology version.
        ontologyIdentifier (1,:) string ...
            {mustBeListOfUniqueItems(ontologyIdentifier)}
    end

    properties (Access = protected)
        Required = ["hasEntity"]
    end

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/sands/ParcellationTerminologyVersion"
    end

    properties (Constant, Hidden)
        LINKED_PROPERTIES = struct(...
            'dataLocation', "openminds.core.File", ...
            'hasEntity', "openminds.sands.ParcellationEntityVersion" ...
        )
        EMBEDDED_PROPERTIES = struct(...
        )
    end

    methods
        function obj = ParcellationTerminologyVersion(varargin)
            obj.assignPVPairs(varargin{:})
        end
    end

    methods (Access = protected)
        function str = getDisplayLabel(obj)

        end
    end

end