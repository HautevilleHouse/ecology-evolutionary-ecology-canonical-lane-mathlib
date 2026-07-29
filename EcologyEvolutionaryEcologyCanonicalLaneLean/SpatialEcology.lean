import HautevilleHouse.EcologyEvolutionaryEcologyCanonicalLaneLean.EcoEvolutionaryFeedback

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure SpatialEcologyPackage {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} where
  metapopulationDynamics : Prop
  landscapeGenetics : Prop
  dispersalEvolution : Prop
  sourceSinkDynamics : Prop
  rangeExpansion : Prop

structure SpatialEcologyEvidence {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} (S : SpatialEcologyPackage G A F) where
  metapopulationDynamicsClosed : S.metapopulationDynamics
  landscapeGeneticsClosed : S.landscapeGenetics
  dispersalEvolutionClosed : S.dispersalEvolution
  sourceSinkDynamicsClosed : S.sourceSinkDynamics
  rangeExpansionClosed : S.rangeExpansion

def SpatialEcologyClosed {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} (S : SpatialEcologyPackage G A F) : Prop :=
  S.metapopulationDynamics ∧ S.landscapeGenetics ∧ S.dispersalEvolution ∧ S.sourceSinkDynamics ∧ S.rangeExpansion

theorem spatial_ecology_closed_from_evidence {G : PopulationGeneticsPackage} {A : AdaptiveDynamicsPackage G} {F : EcoEvolutionaryFeedbackPackage G A} (S : SpatialEcologyPackage G A F) (E : SpatialEcologyEvidence S) :
    SpatialEcologyClosed S := by
  exact And.intro E.metapopulationDynamicsClosed (And.intro E.landscapeGeneticsClosed (And.intro E.dispersalEvolutionClosed (And.intro E.sourceSinkDynamicsClosed E.rangeExpansionClosed)))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse