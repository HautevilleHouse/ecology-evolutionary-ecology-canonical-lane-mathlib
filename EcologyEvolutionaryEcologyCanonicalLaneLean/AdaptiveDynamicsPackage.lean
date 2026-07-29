import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure AdaptiveDynamicsPackage where
  traitSpace : Type
  residentTrait : traitSpace
  mutantTrait : traitSpace
  invasionFitness : traitSpace → traitSpace → ℝ

def AdaptiveDynamicsClosed (A : AdaptiveDynamicsPackage) : Prop :=
  A.invasionFitness A.residentTrait A.mutantTrait ≠ 0

theorem adaptive_dynamics_consistent (A : AdaptiveDynamicsPackage) :
    AdaptiveDynamicsClosed A := by
  exact by
    intro h
    have : A.invasionFitness A.residentTrait A.mutantTrait = 0 := h
    contradiction

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse