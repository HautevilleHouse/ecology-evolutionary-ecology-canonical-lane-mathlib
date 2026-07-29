import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PopulationDynamicsFlowPackage (G : PopulationGeneticPackage) where
  growthRate : Type u
  carryingCapacity : Type v
  logisticEquation : Prop
  equilibriumStability : Prop
  timeEvolution : Prop

structure PopulationDynamicsFlowEvidence {G : PopulationGeneticPackage}
    (F : PopulationDynamicsFlowPackage G) where
  logisticEquationClosed : F.logisticEquation
  equilibriumStabilityClosed : F.equilibriumStability
  timeEvolutionClosed : F.timeEvolution

def PopulationDynamicsFlowClosed {G : PopulationGeneticPackage}
    (F : PopulationDynamicsFlowPackage G) : Prop :=
  F.logisticEquation ∧ F.equilibriumStability ∧ F.timeEvolution

theorem population_dynamics_flow_closed_from_evidence
    {G : PopulationGeneticPackage} (F : PopulationDynamicsFlowPackage G)
    (E : PopulationDynamicsFlowEvidence F) : PopulationDynamicsFlowClosed F := by
  exact And.intro E.logisticEquationClosed
    (And.intro E.equilibriumStabilityClosed E.timeEvolutionClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse