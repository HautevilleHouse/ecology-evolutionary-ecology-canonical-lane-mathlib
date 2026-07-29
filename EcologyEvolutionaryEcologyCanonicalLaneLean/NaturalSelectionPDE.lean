import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure NaturalSelectionPDEPackage (G : PopulationGeneticPackage) where
  selectionCoefficient : Type u
  timeParameter : Type v
  alleleFrequency : Type w
  selectionDifferential : Prop
  pdeEquation : Prop
  equilibriumPoints : Prop

structure NaturalSelectionPDEEvidence {G : PopulationGeneticPackage} (F : NaturalSelectionPDEPackage G) where
  selectionDifferentialClosed : F.selectionDifferential
  pdeEquationClosed : F.pdeEquation
  equilibriumPointsClosed : F.equilibriumPoints

def NaturalSelectionPDEClosed {G : PopulationGeneticPackage} (F : NaturalSelectionPDEPackage G) : Prop :=
  F.selectionDifferential ∧ F.pdeEquation ∧ F.equilibriumPoints

theorem natural_selection_pde_closed_from_evidence
    {G : PopulationGeneticPackage} (F : NaturalSelectionPDEPackage G)
    (E : NaturalSelectionPDEEvidence F) : NaturalSelectionPDEClosed F := by
  exact And.intro E.selectionDifferentialClosed
    (And.intro E.pdeEquationClosed E.equilibriumPointsClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse