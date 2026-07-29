import HautevilleHouse.EcologyEvolutionaryEcologyCanonicalLaneLean.SpatialEcology

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PhylogeneticInferencePackage {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} {S : SpatialEcologyPackage G A F} where
  molecularClock : Prop
  coalescentTheory : Prop
  phylogeneticSignal : Prop
  diversificationRate : Prop
  ancestralStateReconstruction : Prop
  macroevolutionaryTrajectory : Prop

structure PhylogeneticInferenceEvidence {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} {S : SpatialEcologyPackage G A F} (P : PhylogeneticInferencePackage G A F S) where
  molecularClockClosed : P.molecularClock
  coalescentTheoryClosed : P.coalescentTheory
  phylogeneticSignalClosed : P.phylogeneticSignal
  diversificationRateClosed : P.diversificationRate
  ancestralStateReconstructionClosed : P.ancestralStateReconstruction
  macroevolutionaryTrajectoryClosed : P.macroevolutionaryTrajectory

def PhylogeneticInferenceClosed {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} {S : SpatialEcologyPackage G A F} (P : PhylogeneticInferencePackage G A F S) : Prop :=
  P.molecularClock ∧ P.coalescentTheory ∧ P.phylogeneticSignal ∧ P.diversificationRate ∧ P.ancestralStateReconstruction ∧ P.macroevolutionaryTrajectory

theorem phylogenetic_inference_closed_from_evidence {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} {S : SpatialEcologyPackage G A F} (P : PhylogeneticInferencePackage G A F S) (E : PhylogeneticInferenceEvidence P) :
    PhylogeneticInferenceClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.coalescentTheoryClosed (And.intro E.phylogeneticSignalClosed (And.intro E.diversificationRateClosed (And.intro E.ancestralStateReconstructionClosed E.macroevolutionaryTrajectoryClosed))))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse