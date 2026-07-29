import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure CoalescentTheoryPackage (G : PopulationGeneticPackage) where
  effectivePopulationSize : Type u
  coalescenceTime : Type v
  kingmanCoalescent : Prop
  mutationRate : Prop
  genealogyDistribution : Prop

structure CoalescentTheoryEvidence {G : PopulationGeneticPackage}
    (F : CoalescentTheoryPackage G) where
  kingmanCoalescentClosed : F.kingmanCoalescent
  mutationRateClosed : F.mutationRate
  genealogyDistributionClosed : F.genealogyDistribution

def CoalescentTheoryClosed {G : PopulationGeneticPackage}
    (F : CoalescentTheoryPackage G) : Prop :=
  F.kingmanCoalescent ∧ F.mutationRate ∧ F.genealogyDistribution

theorem coalescent_theory_closed_from_evidence
    {G : PopulationGeneticPackage} (F : CoalescentTheoryPackage G)
    (E : CoalescentTheoryEvidence F) : CoalescentTheoryClosed F := by
  exact And.intro E.kingmanCoalescentClosed
    (And.intro E.mutationRateClosed E.genealogyDistributionClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse