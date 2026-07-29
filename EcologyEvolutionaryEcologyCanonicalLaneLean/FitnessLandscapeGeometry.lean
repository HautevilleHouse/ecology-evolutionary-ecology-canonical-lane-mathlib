import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure FitnessLandscapePackage where
  genotypeSpace : Type u
  fitnessFunction : Type v
  adaptiveTopography : Prop
  fitnessPeaks : Prop
  ruggednessMeasure : Prop

structure FitnessLandscapeEvidence (F : FitnessLandscapePackage) where
  adaptiveTopographyClosed : F.adaptiveTopography
  fitnessPeaksClosed : F.fitnessPeaks
  ruggednessMeasureClosed : F.ruggednessMeasure

def FitnessLandscapeClosed (F : FitnessLandscapePackage) : Prop :=
  F.adaptiveTopography ∧ F.fitnessPeaks ∧ F.ruggednessMeasure

theorem fitness_landscape_closed_from_evidence
    (F : FitnessLandscapePackage) (E : FitnessLandscapeEvidence F) :
    FitnessLandscapeClosed F := by
  exact And.intro E.adaptiveTopographyClosed
    (And.intro E.fitnessPeaksClosed E.ruggednessMeasureClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse