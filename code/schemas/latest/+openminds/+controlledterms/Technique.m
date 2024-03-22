classdef Technique < openminds.abstract.ControlledTerm
%Technique - Structured information on the technique.
%
%   PROPERTIES:
%
%   definition                  : (1,1) string
%                                 Enter one sentence for defining this term.
%
%   description                 : (1,1) string
%                                 Enter a short text describing this term.
%
%   interlexIdentifier          : (1,1) string
%                                 Enter the internationalized resource identifier (IRI) pointing to the integrated ontology entry in the InterLex project.
%
%   knowledgeSpaceLink          : (1,1) string
%                                 Enter the internationalized resource identifier (IRI) pointing to the wiki page of the corresponding term in the KnowledgeSpace.
%
%   name                        : (1,1) string
%                                 Controlled term originating from a defined terminology.
%
%   preferredOntologyIdentifier : (1,1) string
%                                 Enter the internationalized resource identifier (IRI) pointing to the preferred ontological term.
%
%   synonym                     : (1,:) string
%                                 Enter one or several synonyms (including abbreviations) for this controlled term.

%   This class was auto-generated by the openMINDS pipeline

    properties (Constant, Hidden)
        X_TYPE = "https://openminds.ebrains.eu/controlledTerms/Technique"
    end

    properties (Constant, Hidden)
        CONTROLLED_INSTANCES = [ ...
            "3DPolarizedLightImaging", ...
            "3DScanning", ...
            "CLARITY_TDE", ...
            "DABStaining", ...
            "DAPiStaining", ...
            "GolgiStaining", ...
            "HEStaining", ...
            "HoechstStaining", ...
            "NisslStaining", ...
            "SDSDigestedFreezeFractureReplicaLabeling", ...
            "SWITCHImmunohistochemistry", ...
            "T1PulseSequence", ...
            "T2PulseSequence", ...
            "TDEClearing", ...
            "TimmsStaining", ...
            "activityModulationTechnique", ...
            "anaesthesiaAdministration", ...
            "anaesthesiaMonitoring", ...
            "anaesthesiaTechnique", ...
            "anterogradeTracing", ...
            "autoradiography", ...
            "avidinBiotinComplexStaining", ...
            "beta-galactosidaseStaining", ...
            "biocytinStaining", ...
            "bloodSampling", ...
            "brightfieldMicroscopy", ...
            "calciumImaging", ...
            "callosotomy", ...
            "cellAttachedPatchClamp", ...
            "computerTomography", ...
            "confocalMicroscopy", ...
            "contrastAgentAdministration", ...
            "contrastEnhancement", ...
            "cortico-corticalEvokedPotentialMapping", ...
            "craniotomy", ...
            "cryosectioning", ...
            "currentClamp", ...
            "diffusionFixationTechnique", ...
            "diffusionTensorImaging", ...
            "diffusionWeightedImaging", ...
            "dualViewInvertedSelectivePlaneIlluminationMicroscopy", ...
            "echoPlanarPulseSequence", ...
            "electrocardiography", ...
            "electrocorticography", ...
            "electroencephalography", ...
            "electromyography", ...
            "electronMicroscopy", ...
            "electronTomography", ...
            "electrooculography", ...
            "electroporation", ...
            "epidermalElectrophysiologyTechnique", ...
            "epiduralElectrocorticography", ...
            "epifluorescentMicroscopy", ...
            "extracellularElectrophysiology", ...
            "fixationTechnique", ...
            "fluorescenceMicroscopy", ...
            "focusedIonBeamScanningElectronMicroscopy", ...
            "functionalMagneticResonanceImaging", ...
            "geneKnockin", ...
            "geneKnockout", ...
            "gradientEchoPulseSequence", ...
            "heavyMetalNegativeStaining", ...
            "high-resolutionScanning", ...
            "high-speedVideoRecording", ...
            "highDensityElectroencephalography", ...
            "highFieldFunctionalMagneticResonanceImaging", ...
            "highFieldMagneticResonanceImaging", ...
            "highThroughputScanning", ...
            "histochemistry", ...
            "immunohistochemistry", ...
            "immunoprecipitation", ...
            "implantSurgery", ...
            "inSituHybridisation", ...
            "infraredDifferentialInterferenceContrastVideoMicroscopy", ...
            "injection", ...
            "intracellularElectrophysiology", ...
            "intracellularInjection", ...
            "intracranialElectroencephalography", ...
            "intraperitonealInjection", ...
            "intravenousInjection", ...
            "iontophoresis", ...
            "iontophoreticMicroinjection", ...
            "lightMicroscopy", ...
            "lightSheetFluorescenceMicroscopy", ...
            "magneticResonanceImaging", ...
            "magneticResonanceSpectroscopy", ...
            "magnetoencephalography", ...
            "massSpectrometry", ...
            "microtomeSectioning", ...
            "multiElectrodeExtracellularElectrophysiology", ...
            "multipleWholeCellPatchClamp", ...
            "myelinStaining", ...
            "nucleicAcidExtraction", ...
            "optogeneticInhibition", ...
            "oralAdministration", ...
            "organExtraction", ...
            "patchClamp", ...
            "perfusionFixationTechnique", ...
            "perfusionTechnique", ...
            "phaseContrastXRayComputedTomography", ...
            "phaseContrastXRayImaging", ...
            "photoactivation", ...
            "photoinactivation", ...
            "photoplethysmography", ...
            "polarizedLightMicroscopy", ...
            "populationReceptiveFieldMapping", ...
            "positronEmissionTomography", ...
            "pressureInjection", ...
            "primaryAntibodyStaining", ...
            "pseudoContinuousArterialSpinLabeling", ...
            "psychologicalTesting", ...
            "quantitativeMagneticResonanceImaging", ...
            "receptiveFieldMapping", ...
            "retinotopicMapping", ...
            "retrogradeTracing", ...
            "scanningElectronMicroscopy", ...
            "scatteredLightImaging", ...
            "secondaryAntibodyStaining", ...
            "serialBlockFaceScanningElectronMicroscopy", ...
            "serialSectionTransmissionElectronMicroscopy", ...
            "sharpElectrodeIntracellularElectrophysiology", ...
            "silverStaining", ...
            "singleElectrodeExtracellularElectrophysiology", ...
            "singleElectrodeJuxtacellularElectrophysiology", ...
            "sodiumMRI", ...
            "sonography", ...
            "spinEchoPulseSequence", ...
            "stereoelectroencephalography", ...
            "stereology", ...
            "stereotacticSurgery", ...
            "structuralNeuroimaging", ...
            "subcutaneousInjection", ...
            "subduralElectrocorticography", ...
            "tetrodeExtracellularElectrophysiology", ...
            "time-of-flightMagneticResonanceAngiography", ...
            "tissueClearing", ...
            "transcardialPerfusionFixationTechnique", ...
            "transcardialPerfusionTechnique", ...
            "transmissionElectronMicroscopy", ...
            "twoPhotonFluorescenceMicroscopy", ...
            "ultraHighFieldFunctionalMagneticResonanceImaging", ...
            "ultraHighFieldMagneticResonanceImaging", ...
            "ultraHighFieldMagneticResonanceSpectroscopy", ...
            "vibratomeSectioning", ...
            "videoTracking", ...
            "virus-mediatedTransfection", ...
            "voltageClamp", ...
            "voltageSensitiveDyeImaging", ...
            "weightedCorrelationNetworkAnalysis", ...
            "wholeCellPatchClamp", ...
            "widefieldFluorescenceMicroscopy" ...
        ]
    end

    methods
        function obj = Technique(varargin)
            obj@openminds.abstract.ControlledTerm(varargin{:})
        end
    end

end