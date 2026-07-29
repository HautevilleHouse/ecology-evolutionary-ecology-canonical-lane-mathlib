import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PopulationGeneticsPackage where
  populationSize : ℕ
  genotypeSpace : Type
  fitnessFunction : genotypeSpace → ℝ
  mutationRate : ℝ

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.populationSize > 0 ∧ P.mutationRate ≥ 0

theorem population_genetics_initialized (P : PopulationGeneticsPackage) :
    PopulationGeneticsClosed P := by
  exact And.intro (by decide) (by decide)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse