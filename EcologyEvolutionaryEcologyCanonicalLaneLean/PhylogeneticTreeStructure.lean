import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PhylogeneticTreeStructure where
  branchingPattern : Prop
  branchLengths : Prop
  commonAncestor : Prop
  monophyleticGroup : Prop
  paraphyleticGroup : Prop
  polyphyleticGroup : Prop
  molecularClock : Prop
  branchingPatternTerm : branchingPattern
  branchLengthsTerm : branchLengths
  commonAncestorTerm : commonAncestor
  monophyleticGroupTerm : monophyleticGroup
  paraphyleticGroupTerm : paraphyleticGroup
  polyphyleticGroupTerm : polyphyleticGroup
  molecularClockTerm : molecularClock

structure PhylogeneticEvidence (P : PhylogeneticTreeStructure) where
  branchingPatternClosed : P.branchingPattern
  branchLengthsClosed : P.branchLengths
  commonAncestorClosed : P.commonAncestor
  monophyleticGroupClosed : P.monophyleticGroup
  paraphyleticGroupClosed : P.paraphyleticGroup
  polyphyleticGroupClosed : P.polyphyleticGroup
  molecularClockClosed : P.molecularClock

def PhylogeneticClosed (P : PhylogeneticTreeStructure) : Prop :=
  P.branchingPattern ∧ P.branchLengths ∧ P.commonAncestor ∧
  P.monophyleticGroup ∧ P.paraphyleticGroup ∧ P.polyphyleticGroup ∧ P.molecularClock

theorem phylogenetic_closed_from_evidence (P : PhylogeneticTreeStructure) (E : PhylogeneticEvidence P) : PhylogeneticClosed P := by
  exact And.intro E.branchingPatternClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.commonAncestorClosed
        (And.intro E.monophyleticGroupClosed
          (And.intro E.paraphyleticGroupClosed
            (And.intro E.polyphyleticGroupClosed E.molecularClockClosed)))))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse