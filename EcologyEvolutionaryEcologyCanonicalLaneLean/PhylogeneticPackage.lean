import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure PhylogeneticPackage where
  taxonCount : ℕ
  branchLengths : List ℝ
  likelihood : ℝ

def PhylogeneticClosed (P : PhylogeneticPackage) : Prop :=
  P.taxonCount ≥ 2 ∧ P.likelihood > 0

theorem phylogenetic_consistent (P : PhylogeneticPackage) :
    PhylogeneticClosed P := by
  exact And.intro (by omega) (by linarith)

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse