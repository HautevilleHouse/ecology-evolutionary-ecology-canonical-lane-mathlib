import HautevilleHouse.EcologyEvolutionaryEcologyCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyEvolutionaryEcologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EcologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologyAdmittedObject where
  space : EcologySpace
  closedPopDynamics : Prop
  evolutionaryStable : Prop
  fitnessModel : Type
  fitnessTopology : TopologicalSpace fitnessModel
  fitnessLandscape : Prop
  conclusion : fitnessLandscape

structure EcologyEndgameState where
  object : EcologyAdmittedObject

def EcologyWitnessClosed (O : EcologyAdmittedObject) : Prop :=
  O.fitnessLandscape

end EcologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse