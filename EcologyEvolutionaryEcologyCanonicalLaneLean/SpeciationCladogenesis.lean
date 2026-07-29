import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure SpeciationCladogenesisPackage (G : PopulationGeneticPackage) where
  reproductiveIsolation : Prop
  phylogeneticTree : Type u
  cladogenesisEvent : Prop
  lineageSplitting : Prop

structure SpeciationCladogenesisEvidence {G : PopulationGeneticPackage}
    (F : SpeciationCladogenesisPackage G) where
  reproductiveIsolationClosed : F.reproductiveIsolation
  cladogenesisEventClosed : F.cladogenesisEvent
  lineageSplittingClosed : F.lineageSplitting

def SpeciationCladogenesisClosed {G : PopulationGeneticPackage}
    (F : SpeciationCladogenesisPackage G) : Prop :=
  F.reproductiveIsolation ∧ F.cladogenesisEvent ∧ F.lineageSplitting

theorem speciation_cladogenesis_closed_from_evidence
    {G : PopulationGeneticPackage} (F : SpeciationCladogenesisPackage G)
    (E : SpeciationCladogenesisEvidence F) : SpeciationCladogenesisClosed F := by
  exact And.intro E.reproductiveIsolationClosed
    (And.intro E.cladogenesisEventClosed E.lineageSplittingClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse