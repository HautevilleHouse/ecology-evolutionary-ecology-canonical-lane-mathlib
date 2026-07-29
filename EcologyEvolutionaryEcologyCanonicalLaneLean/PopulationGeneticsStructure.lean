import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PopulationGeneticStructure where
  censusPopulationSize : Prop
  effectivePopulationSize : Prop
  mutationRate : Prop
  selectionCoefficient : Prop
  migrationRate : Prop
  alleleFrequencies : Prop
  hardyWeinbergEquilibrium : Prop
  censusPopulationSizeTerm : censusPopulationSize
  effectivePopulationSizeTerm : effectivePopulationSize
  mutationRateTerm : mutationRate
  selectionCoefficientTerm : selectionCoefficient
  migrationRateTerm : migrationRate
  alleleFrequenciesTerm : alleleFrequencies
  hardyWeinbergEquilibriumTerm : hardyWeinbergEquilibrium

structure PopulationGeneticEvidence (P : PopulationGeneticStructure) where
  censusPopulationSizeClosed : P.censusPopulationSize
  effectivePopulationSizeClosed : P.effectivePopulationSize
  mutationRateClosed : P.mutationRate
  selectionCoefficientClosed : P.selectionCoefficient
  migrationRateClosed : P.migrationRate
  alleleFrequenciesClosed : P.alleleFrequencies
  hardyWeinbergEquilibriumClosed : P.hardyWeinbergEquilibrium

def PopulationGeneticClosed (P : PopulationGeneticStructure) : Prop :=
  P.censusPopulationSize ∧ P.effectivePopulationSize ∧ P.mutationRate ∧
  P.selectionCoefficient ∧ P.migrationRate ∧ P.alleleFrequencies ∧ P.hardyWeinbergEquilibrium

theorem population_genetic_closed_from_evidence (P : PopulationGeneticStructure) (E : PopulationGeneticEvidence P) : PopulationGeneticClosed P := by
  exact And.intro E.censusPopulationSizeClosed
    (And.intro E.effectivePopulationSizeClosed
      (And.intro E.mutationRateClosed
        (And.intro E.selectionCoefficientClosed
          (And.intro E.migrationRateClosed
            (And.intro E.alleleFrequenciesClosed E.hardyWeinbergEquilibriumClosed)))))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse