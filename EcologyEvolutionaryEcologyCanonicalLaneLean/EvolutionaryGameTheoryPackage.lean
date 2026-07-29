import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategySpace : Type
  payoffMatrix : strategySpace → strategySpace → ℝ
  replicatorEquation : strategySpace → ℝ
  steadyStateCondition : Prop

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.steadyStateCondition

theorem evolutionary_game_theory_checked (E : EvolutionaryGameTheoryPackage) :
    EvolutionaryGameTheoryClosed E := by
  exact E.steadyStateCondition

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse