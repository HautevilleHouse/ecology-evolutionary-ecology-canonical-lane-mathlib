import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyEvolutionaryEcology

structure EcologyAdmittedObject where
  ecosystem : Type
  carriesDiversity : Prop
  evolutionaryStable : Prop
  conclusion : carriesDiversity ∧ evolutionaryStable

def EcologyWitnessClosed (O : EcologyAdmittedObject) : Prop :=
  O.carriesDiversity ∧ O.evolutionaryStable

theorem ecology_statement_closed (O : EcologyAdmittedObject) :
    EcologyWitnessClosed O := By
  exact O.conclusion

end EcologyEvolutionaryEcology
end HautevilleHouse
