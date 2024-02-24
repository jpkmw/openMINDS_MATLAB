classdef MolecularEntity < openminds.abstract.ControlledTerm
%MolecularEntity - No description available.
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
        X_TYPE = "https://openminds.ebrains.eu/controlledTerms/MolecularEntity"
    end

    properties (Constant, Hidden)
        CONTROLLED_INSTANCES = [ ...
            "4-(2-Hydroxyethyl)-1-piperazineEthanesulfonicAcid", ...
            "5-HT1AReceptor", ...
            "5-HT1BReceptor", ...
            "5-HT2AReceptor", ...
            "5-HT2Receptor", ...
            "5-HT4Receptor", ...
            "5-HTTransporter", ...
            "6,7-Dinitro-1,4-dihydroquinoxaline-2,3-dione", ...
            "A1Receptor", ...
            "A2AReceptor", ...
            "AMPAReceptor", ...
            "AlexaFluor594", ...
            "Beta-Amyloid40", ...
            "D1Receptor", ...
            "D2Receptor", ...
            "DAB", ...
            "Fluoro-Emerald", ...
            "Fluoro-Gold", ...
            "Fluoro-Ruby", ...
            "GABA-AReceptor", ...
            "GABA-A_BZ", ...
            "GABA-BReceptor", ...
            "GABAReceptor", ...
            "JNKMapKinaseScaffoldProtein2", ...
            "M1Receptor", ...
            "M2Receptor", ...
            "M3Receptor", ...
            "MagnesiumATP", ...
            "NMDAReceptor", ...
            "acetylcholine", ...
            "alpha-1Receptor", ...
            "alpha-2Receptor", ...
            "alpha-4Beta-2Receptor", ...
            "anterogradeTracer", ...
            "biomarker", ...
            "biotinylatedDextranAmine", ...
            "brainDerivedNeurotrophicFactor", ...
            "c-FOS", ...
            "calbindin", ...
            "calciumCalmodulinProteinKinaseII", ...
            "calciumCalmodulinProteinKinaseIIAlphaChain", ...
            "calciumChloride", ...
            "calretinin", ...
            "carbonDioxide", ...
            "cholecystokinin", ...
            "choline", ...
            "cholineAcetyltransferase", ...
            "cyclicAdenosineMonophosphate", ...
            "diboronTrioxide", ...
            "dimethylSulfoxide", ...
            "dinitrogen", ...
            "dioxygen", ...
            "dopamine", ...
            "dopamineTransporter", ...
            "dynorphin", ...
            "edeticAcid", ...
            "egtazicAcid", ...
            "enkephalin", ...
            "epibatidine", ...
            "ethanol", ...
            "excitatoryAminoAcidTransporter", ...
            "excitatoryAminoAcidTransporter1", ...
            "excitatoryAminoAcidTransporter2", ...
            "excitatoryAminoAcidTransporter3", ...
            "excitatoryAminoAcidTransporter4", ...
            "excitatoryAminoAcidTransporter5", ...
            "flumazenil", ...
            "fluorescentMicrospheres", ...
            "formaldehyde", ...
            "gabazine", ...
            "galanin", ...
            "gluconicAcid", ...
            "glucose", ...
            "glutamate", ...
            "glutamateTransporter", ...
            "glycerol", ...
            "glycineTransporter2", ...
            "growthFactor", ...
            "halothane", ...
            "histamine", ...
            "insulinLikeGrowthFactor1", ...
            "intrabody", ...
            "ionotropicGlutamateReceptor", ...
            "iperoxo", ...
            "iron", ...
            "isoflurane", ...
            "kainateReceptor", ...
            "kallikrein-relatedPeptidase8", ...
            "ketamine", ...
            "luciferYellow", ...
            "magnesiumChloride", ...
            "magnesiumSulfate", ...
            "medetomidine", ...
            "metabotropicGlutamateReceptor", ...
            "metabotropicGlutamateReceptor1", ...
            "metabotropicGlutamateReceptor2", ...
            "metabotropicGlutamateReceptor3", ...
            "metabotropicGlutamateReceptor5", ...
            "methanol", ...
            "monosodiumPhosphate", ...
            "muscimol", ...
            "neurobiotin", ...
            "neuroligin-3", ...
            "neuronalNuclearAntigen", ...
            "neurotrophicFactor", ...
            "nickel", ...
            "parvalbumin", ...
            "pentobarbital", ...
            "pentobarbitalSodium", ...
            "potassiumChloride", ...
            "potassiumGluconate", ...
            "propofol", ...
            "siliconDioxide", ...
            "silverAmmonium", ...
            "silverNitrate", ...
            "sodiumBicarbonate", ...
            "sodiumChloride", ...
            "sucrose", ...
            "tungsten", ...
            "vesicularGlutamateTransporter", ...
            "vesicularGlutamateTransporter1", ...
            "vesicularGlutamateTransporter2", ...
            "vesicularGlutamateTransporter3", ...
            "water" ...
        ]
    end

    methods
        function obj = MolecularEntity(varargin)
            obj@openminds.abstract.ControlledTerm(varargin{:})
        end
    end

end