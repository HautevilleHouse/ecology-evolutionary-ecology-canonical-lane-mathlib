import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure CoevolutionDynamicsPackage where
  interactingSpecies : Type u
  antagonisticCoevolution : Prop
  mutualisticCoevolution : Prop
  redQueenHypothesis : Prop
  traitDynamicsStable : Prop

structure CoevolutionDynamicsEvidence (C : CoevolutionDynamicsPackage) where
  antagonisticCoevolutionClosed : C.antagonisticCoevolution
  mutualisticCoevolutionClosed : C.mutualisticCoevolution
  redQueenHypothesisClosed : C.redQueenHypothesis
  traitDynamicsStableClosed : C.traitDynamicsStable

def CoevolutionDynamicsClosed (C : CoevolutionDynamicsPackage) : Prop :=
  C.antagonisticCoevolution ∧ C.mutualisticCoevolution ∧ C.redQueenHypothesis ∧ C.traitDynamicsStable

theorem coevolution_dynamics_closed_from_evidence (C : CoevolutionDynamicsPackage)
    (E : CoevolutionDynamicsEvidence C) : CoevolutionDynamicsClosed C := by
  exact And.intro E.antagonisticCoevolutionClosed
    (And.intro E.mutualisticCoevolutionClosed
      (And.intro E.redQueenHypothesisClosed E.traitDynamicsStableClosed))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
