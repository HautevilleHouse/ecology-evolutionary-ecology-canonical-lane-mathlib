import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure SelectionDynamics where
  naturalSelection : Prop
  sexualSelection : Prop
  kinSelection : Prop
  groupSelection : Prop
  fitnessLandscape : Prop
  adaptiveLandscape : Prop
  selectivePressure : Prop
  naturalSelectionTerm : naturalSelection
  sexualSelectionTerm : sexualSelection
  kinSelectionTerm : kinSelection
  groupSelectionTerm : groupSelection
  fitnessLandscapeTerm : fitnessLandscape
  adaptiveLandscapeTerm : adaptiveLandscape
  selectivePressureTerm : selectivePressure

structure SelectionEvidence (S : SelectionDynamics) where
  naturalSelectionClosed : S.naturalSelection
  sexualSelectionClosed : S.sexualSelection
  kinSelectionClosed : S.kinSelection
  groupSelectionClosed : S.groupSelection
  fitnessLandscapeClosed : S.fitnessLandscape
  adaptiveLandscapeClosed : S.adaptiveLandscape
  selectivePressureClosed : S.selectivePressure

def SelectionClosed (S : SelectionDynamics) : Prop :=
  S.naturalSelection ∧ S.sexualSelection ∧ S.kinSelection ∧
  S.groupSelection ∧ S.fitnessLandscape ∧ S.adaptiveLandscape ∧ S.selectivePressure

theorem selection_closed_from_evidence (S : SelectionDynamics) (E : SelectionEvidence S) : SelectionClosed S := by
  exact And.intro E.naturalSelectionClosed
    (And.intro E.sexualSelectionClosed
      (And.intro E.kinSelectionClosed
        (And.intro E.groupSelectionClosed
          (And.intro E.fitnessLandscapeClosed
            (And.intro E.adaptiveLandscapeClosed E.selectivePressureClosed)))))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse