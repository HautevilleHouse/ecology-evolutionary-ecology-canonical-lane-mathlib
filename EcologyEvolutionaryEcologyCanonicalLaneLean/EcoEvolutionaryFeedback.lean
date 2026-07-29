import HautevilleHouse.EcologyEvolutionaryEcologyCanonicalLaneLean.AdaptiveDynamics

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure EcoEvolutionaryFeedbackPackage {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} where
  ecologicalLoop : Prop
  traitMediatedInteraction : Prop
  nicheConstruction : Prop
  evolutionaryRescue : Prop
  communityAssembly : Prop

structure EcoEvolutionaryFeedbackEvidence {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} (F : EcoEvolutionaryFeedbackPackage G A) where
  ecologicalLoopClosed : F.ecologicalLoop
  traitMediatedInteractionClosed : F.traitMediatedInteraction
  nicheConstructionClosed : F.nicheConstruction
  evolutionaryRescueClosed : F.evolutionaryRescue
  communityAssemblyClosed : F.communityAssembly

def EcoEvolutionaryFeedbackClosed {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} (F : EcoEvolutionaryFeedbackPackage G A) : Prop :=
  F.ecologicalLoop ∧ F.traitMediatedInteraction ∧ F.nicheConstruction ∧ F.evolutionaryRescue ∧ F.communityAssembly

theorem eco_evolutionary_feedback_closed_from_evidence {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} (F : EcoEvolutionaryFeedbackPackage G A) (E : EcoEvolutionaryFeedbackEvidence F) :
    EcoEvolutionaryFeedbackClosed F := by
  exact And.intro E.ecologicalLoopClosed (And.intro E.traitMediatedInteractionClosed (And.intro E.nicheConstructionClosed (And.intro E.evolutionaryRescueClosed E.communityAssemblyClosed)))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse