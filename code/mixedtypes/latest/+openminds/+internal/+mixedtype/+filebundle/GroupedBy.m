classdef GroupedBy < openminds.internal.abstract.LinkedCategory
    properties (Constant, Hidden)
        ALLOWED_TYPES = ["openminds.computation.LocalFile", "openminds.controlledterms.AnalysisTechnique", "openminds.controlledterms.AuditoryStimulusType", "openminds.controlledterms.BiologicalOrder", "openminds.controlledterms.BiologicalSex", "openminds.controlledterms.BreedingType", "openminds.controlledterms.CellCultureType", "openminds.controlledterms.CellType", "openminds.controlledterms.Disease", "openminds.controlledterms.DiseaseModel", "openminds.controlledterms.ElectricalStimulusType", "openminds.controlledterms.GeneticStrainType", "openminds.controlledterms.GustatoryStimulusType", "openminds.controlledterms.Handedness", "openminds.controlledterms.MolecularEntity", "openminds.controlledterms.OlfactoryStimulusType", "openminds.controlledterms.OpticalStimulusType", "openminds.controlledterms.Organ", "openminds.controlledterms.OrganismSubstance", "openminds.controlledterms.OrganismSystem", "openminds.controlledterms.Species", "openminds.controlledterms.StimulationApproach", "openminds.controlledterms.StimulationTechnique", "openminds.controlledterms.SubcellularEntity", "openminds.controlledterms.TactileStimulusType", "openminds.controlledterms.Technique", "openminds.controlledterms.TermSuggestion", "openminds.controlledterms.UBERONParcellation", "openminds.controlledterms.VisualStimulusType", "openminds.core.BehavioralProtocol", "openminds.core.File", "openminds.core.FileBundle", "openminds.core.Subject", "openminds.core.SubjectGroup", "openminds.core.SubjectGroupState", "openminds.core.SubjectState", "openminds.core.TissueSample", "openminds.core.TissueSampleCollection", "openminds.core.TissueSampleCollectionState", "openminds.core.TissueSampleState", "openminds.sands.CommonCoordinateSpace", "openminds.sands.CommonCoordinateSpaceVersion", "openminds.sands.CustomAnatomicalEntity", "openminds.sands.CustomCoordinateSpace", "openminds.sands.ParcellationEntity", "openminds.sands.ParcellationEntityVersion"]
        IS_SCALAR = false
    end
end
