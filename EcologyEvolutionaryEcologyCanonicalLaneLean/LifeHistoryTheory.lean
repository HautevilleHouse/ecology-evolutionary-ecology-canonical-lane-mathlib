import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure LifeHistoryTheoryPackage where
  reproductiveStrategy : Type u
  survivalCurve : Type v
  rKSelectionGradient : Prop
  tradeoffGrowthReproduction : Prop
  senescencePattern : Prop

structure LifeHistoryTheoryEvidence (L : LifeHistoryTheoryPackage) where
  rKSelectionGradientClosed : L.rKSelectionGradient
  tradeoffGrowthReproductionClosed : L.tradeoffGrowthReproduction
  senescencePatternClosed : L.senescencePattern

def LifeHistoryTheoryClosed (L : LifeHistoryTheoryPackage) : Prop :=
  L.rKSelectionGradient ∧ L.tradeoffGrowthReproduction ∧ L.senescencePattern

theorem life_history_theory_closed_from_evidence (L : LifeHistoryTheoryPackage)
    (E : LifeHistoryTheoryEvidence L) : LifeHistoryTheoryClosed L := by
  exact And.intro E.rKSelectionGradientClosed
    (And.intro E.tradeoffGrowthReproductionClosed E.senescencePatternClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
