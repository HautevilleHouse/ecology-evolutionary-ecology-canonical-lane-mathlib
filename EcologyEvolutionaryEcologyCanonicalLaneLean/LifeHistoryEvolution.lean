import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure LifeHistoryEvolutionPackage where
  fitnessLandscape : Prop
  rKSelectionTheory : Prop
  tradeOffs : Prop
  reproductiveEffort : Prop
  agingModels : Prop

structure LifeHistoryEvolutionEvidence (L : LifeHistoryEvolutionPackage) where
  fitnessLandscapeClosed : L.fitnessLandscape
  rKSelectionTheoryClosed : L.rKSelectionTheory
  tradeOffsClosed : L.tradeOffs
  reproductiveEffortClosed : L.reproductiveEffort
  agingModelsClosed : L.agingModels

def LifeHistoryEvolutionClosed (L : LifeHistoryEvolutionPackage) : Prop :=
  L.fitnessLandscape ∧ L.rKSelectionTheory ∧
  L.tradeOffs ∧ L.reproductiveEffort ∧ L.agingModels

theorem life_history_evolution_closed_from_evidence (L : LifeHistoryEvolutionPackage)
    (E : LifeHistoryEvolutionEvidence L) : LifeHistoryEvolutionClosed L := by
  exact And.intro E.fitnessLandscapeClosed
    (And.intro E.rKSelectionTheoryClosed
      (And.intro E.tradeOffsClosed
        (And.intro E.reproductiveEffortClosed E.agingModelsClosed)))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
