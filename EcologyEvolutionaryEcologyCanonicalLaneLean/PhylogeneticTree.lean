import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesSet : Type u
  commonAncestor : Prop
  branchingProcess : Type v
  molecularClockCalibrated : Prop
  treeTopologyConsistent : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  commonAncestorClosed : P.commonAncestor
  molecularClockCalibratedClosed : P.molecularClockCalibrated
  treeTopologyConsistentClosed : P.treeTopologyConsistent

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.commonAncestor ∧ P.molecularClockCalibrated ∧ P.treeTopologyConsistent

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.commonAncestorClosed
    (And.intro E.molecularClockCalibratedClosed E.treeTopologyConsistentClosed)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
