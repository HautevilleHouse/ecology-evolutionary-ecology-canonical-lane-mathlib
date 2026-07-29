import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure EcologicalNicheEvolutionPackage (G : PopulationGeneticPackage) where
  nicheSpace : Type u
  environmentalGradient : Type v
  nicheConservation : Prop
  nicheShift : Prop
  adaptiveLandscape : Prop

structure EcologicalNicheEvolutionEvidence {G : PopulationGeneticPackage}
    (F : EcologicalNicheEvolutionPackage G) where
  nicheConservationClosed : F.nicheConservation
  nicheShiftClosed : F.nicheShift
  adaptiveLandscapeClosed : F.adaptiveLandscape

def EcologicalNicheEvolutionClosed {G : PopulationGeneticPackage}
    (F : EcologicalNicheEvolutionPackage G) : Prop :=
  F.nicheConservation ∧ F.nicheShift ∧ F.adaptiveLandscape

theorem ecological_niche_evolution_closed_from_evidence
    {G : PopulationGeneticPackage} (F : EcologicalNicheEvolutionPackage G)
    (E : EcologicalNicheEvolutionEvidence F) : EcologicalNicheEvolutionClosed F := by
  exact And.intro E.nicheConservationClosed
    (And.intro E.nicheShiftClosed E.adaptiveLandscapeClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse