import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

structure EcologicalNicheModel where
  fundamentalNiche : Prop
  realizedNiche : Prop
  abioticFactors : Prop
  bioticInteractions : Prop
  dispersalCapability : Prop
  nicheConservatism : Prop
  nicheEvolution : Prop
  fundamentalNicheTerm : fundamentalNiche
  realizedNicheTerm : realizedNiche
  abioticFactorsTerm : abioticFactors
  bioticInteractionsTerm : bioticInteractions
  dispersalCapabilityTerm : dispersalCapability
  nicheConservatismTerm : nicheConservatism
  nicheEvolutionTerm : nicheEvolution

structure NicheEvidence (N : EcologicalNicheModel) where
  fundamentalNicheClosed : N.fundamentalNiche
  realizedNicheClosed : N.realizedNiche
  abioticFactorsClosed : N.abioticFactors
  bioticInteractionsClosed : N.bioticInteractions
  dispersalCapabilityClosed : N.dispersalCapability
  nicheConservatismClosed : N.nicheConservatism
  nicheEvolutionClosed : N.nicheEvolution

def NicheClosed (N : EcologicalNicheModel) : Prop :=
  N.fundamentalNiche ∧ N.realizedNiche ∧ N.abioticFactors ∧
  N.bioticInteractions ∧ N.dispersalCapability ∧ N.nicheConservatism ∧ N.nicheEvolution

theorem niche_closed_from_evidence (N : EcologicalNicheModel) (E : NicheEvidence N) : NicheClosed N := by
  exact And.intro E.fundamentalNicheClosed
    (And.intro E.realizedNicheClosed
      (And.intro E.abioticFactorsClosed
        (And.intro E.bioticInteractionsClosed
          (And.intro E.dispersalCapabilityClosed
            (And.intro E.nicheConservatismClosed E.nicheEvolutionClosed)))))

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse