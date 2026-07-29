import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequencies : Type u
  fitnessLandscape : Type v
  hardyWeinbergEquilibrium : Prop
  selectionCoefficientControlled : Prop
  mutationRateBounded : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hardyWeinbergEquilibriumClosed : P.hardyWeinbergEquilibrium
  selectionCoefficientControlledClosed : P.selectionCoefficientControlled
  mutationRateBoundedClosed : P.mutationRateBounded

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergEquilibrium ∧ P.selectionCoefficientControlled ∧ P.mutationRateBounded

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage)
    (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P := by
  exact And.intro E.hardyWeinbergEquilibriumClosed
    (And.intro E.selectionCoefficientControlledClosed E.mutationRateBoundedClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
