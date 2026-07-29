import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage (G : PopulationGeneticPackage) where
  payoffMatrix : Type u
  replicatorDynamics : Prop
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop

structure EvolutionaryGameTheoryEvidence {G : PopulationGeneticPackage}
    (F : EvolutionaryGameTheoryPackage G) where
  replicatorDynamicsClosed : F.replicatorDynamics
  nashEquilibriumClosed : F.nashEquilibrium
  evolutionaryStableStrategyClosed : F.evolutionaryStableStrategy

def EvolutionaryGameTheoryClosed {G : PopulationGeneticPackage}
    (F : EvolutionaryGameTheoryPackage G) : Prop :=
  F.replicatorDynamics ∧ F.nashEquilibrium ∧ F.evolutionaryStableStrategy

theorem evolutionary_game_theory_closed_from_evidence
    {G : PopulationGeneticPackage} (F : EvolutionaryGameTheoryPackage G)
    (E : EvolutionaryGameTheoryEvidence F) : EvolutionaryGameTheoryClosed F := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.nashEquilibriumClosed E.evolutionaryStableStrategyClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse