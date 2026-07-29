import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure GeneticDriftStochasticProcessPackage where
  populationSize : Type u
  alleleFrequency : Type v
  wrightFisherModel : Prop
  diffusionApproximation : Prop
  fixationProbability : Prop

structure GeneticDriftStochasticProcessEvidence
    (F : GeneticDriftStochasticProcessPackage) where
  wrightFisherModelClosed : F.wrightFisherModel
  diffusionApproximationClosed : F.diffusionApproximation
  fixationProbabilityClosed : F.fixationProbability

def GeneticDriftStochasticProcessClosed
    (F : GeneticDriftStochasticProcessPackage) : Prop :=
  F.wrightFisherModel ∧ F.diffusionApproximation ∧ F.fixationProbability

theorem genetic_drift_stochastic_process_closed_from_evidence
    (F : GeneticDriftStochasticProcessPackage)
    (E : GeneticDriftStochasticProcessEvidence F) :
    GeneticDriftStochasticProcessClosed F := by
  exact And.intro E.wrightFisherModelClosed
    (And.intro E.diffusionApproximationClosed E.fixationProbabilityClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse