import HautevilleHouse.EcologyEvolutionaryEcologyCanonicalLaneLean.PopulationGenetics

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure AdaptiveDynamicsPackage {G : PopulationGeneticsPackage} where
  mutationAppearance : Prop
  invasionFit : Prop
  evolutionarySingularity : Prop
  branchingPoint : Prop
  fitnessGradient : Prop

structure AdaptiveDynamicsEvidence {G : PopulationGeneticsPackage} (A : AdaptiveDynamicsPackage G) where
  mutationAppearanceClosed : A.mutationAppearance
  invasionFitClosed : A.invasionFit
  evolutionarySingularityClosed : A.evolutionarySingularity
  branchingPointClosed : A.branchingPoint
  fitnessGradientClosed : A.fitnessGradient

def AdaptiveDynamicsClosed {G : PopulationGeneticsPackage} (A : AdaptiveDynamicsPackage G) : Prop :=
  A.mutationAppearance ∧ A.invasionFit ∧ A.evolutionarySingularity ∧ A.branchingPoint ∧ A.fitnessGradient

theorem adaptive_dynamics_closed_from_evidence {G : PopulationGeneticsPackage} (A : AdaptiveDynamicsPackage G) (E : AdaptiveDynamicsEvidence A) :
    AdaptiveDynamicsClosed A := by
  exact And.intro E.mutationAppearanceClosed (And.intro E.invasionFitClosed (And.intro E.evolutionarySingularityClosed (And.intro E.branchingPointClosed E.fitnessGradientClosed)))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse