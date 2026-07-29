import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure MetapopulationDynamicsPackage where
  patchOccupancy : Prop
  colonizationExtinction : Prop
  metapopulationFitness : Prop
  landscapeConnectivity : Prop
  persistenceConditions : Prop

structure MetapopulationDynamicsEvidence (M : MetapopulationDynamicsPackage) where
  patchOccupancyClosed : M.patchOccupancy
  colonizationExtinctionClosed : M.colonizationExtinction
  metapopulationFitnessClosed : M.metapopulationFitness
  landscapeConnectivityClosed : M.landscapeConnectivity
  persistenceConditionsClosed : M.persistenceConditions

def MetapopulationDynamicsClosed (M : MetapopulationDynamicsPackage) : Prop :=
  M.patchOccupancy ∧ M.colonizationExtinction ∧
  M.metapopulationFitness ∧ M.landscapeConnectivity ∧ M.persistenceConditions

theorem metapopulation_dynamics_closed_from_evidence (M : MetapopulationDynamicsPackage)
    (E : MetapopulationDynamicsEvidence M) : MetapopulationDynamicsClosed M := by
  exact And.intro E.patchOccupancyClosed
    (And.intro E.colonizationExtinctionClosed
      (And.intro E.metapopulationFitnessClosed
        (And.intro E.landscapeConnectivityClosed E.persistenceConditionsClosed)))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
