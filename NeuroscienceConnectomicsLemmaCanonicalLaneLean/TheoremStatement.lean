import HautevilleHouse.NeuroscienceConnectomicsLemmaCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure ConnectomicsAdmittedObject where
  network : Type u
  topology : TopologicalSpace network
  hebbianLearning : Prop
  hodgkinHuxleyCompatible : Prop
  connectomeStructure : Prop
  conclusion : connectomeStructure

def ConnectomicsWitnessClosed (O : ConnectomicsAdmittedObject) : Prop :=
  O.connectomeStructure

structure ConnectomicsEndgameState where
  object : ConnectomicsAdmittedObject

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse