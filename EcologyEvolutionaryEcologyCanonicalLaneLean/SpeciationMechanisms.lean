import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure SpeciationMechanismsPackage where
  allopatricSpeciation : Prop
  sympatricSpeciation : Prop
  reproductiveIsolationAccumulated : Prop
  hybridIncompatibilityAccounted : Prop

def SpeciationMechanismsClosed (S : SpeciationMechanismsPackage) : Prop :=
  S.allopatricSpeciation ∧ S.sympatricSpeciation ∧ S.reproductiveIsolationAccumulated ∧ S.hybridIncompatibilityAccounted

structure SpeciationMechanismsEvidence (S : SpeciationMechanismsPackage) where
  allopatricSpeciationClosed : S.allopatricSpeciation
  sympatricSpeciationClosed : S.sympatricSpeciation
  reproductiveIsolationAccumulatedClosed : S.reproductiveIsolationAccumulated
  hybridIncompatibilityAccountedClosed : S.hybridIncompatibilityAccounted

theorem speciation_mechanisms_closed_from_evidence (S : SpeciationMechanismsPackage)
    (E : SpeciationMechanismsEvidence S) : SpeciationMechanismsClosed S := by
  exact And.intro E.allopatricSpeciationClosed
    (And.intro E.sympatricSpeciationClosed
      (And.intro E.reproductiveIsolationAccumulatedClosed E.hybridIncompatibilityAccountedClosed))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
