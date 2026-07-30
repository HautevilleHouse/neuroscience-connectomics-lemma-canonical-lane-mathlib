import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure SynapticWeight where
  preSynaptic : Type
  postSynaptic : Type
  weight : Float

definition ofHebbianUpdate (w : SynapticWeight) (preActivity postActivity : Float) : SynapticWeight :=
  { w with weight := w.weight + 0.1 * preActivity * postActivity }

structure HodgkinHuxleyState where
  membranePotential : Float
  nGate : Float
  mGate : Float
  hGate : Float

definition ofHodgkinHuxleyEquation (state : HodgkinHuxleyState) (inputCurrent : Float) : HodgkinHuxleyState :=
  state

structure NeuralField where
  activationFunction : Float -> Float
  connectivityKernel : Float -> Float -> Float
  firingRate : Float -> Float

structure Connectome where
  neurons : Nat
  adjacencyMatrix : Float -> Float -> Float
  synapticWeights : List SynapticWeight

structure ConnectomicsAdmittedObject where
  space : Connectome
  closedUnderHebbianUpdate : Prop
  hhDynamicsConvergent : Prop
  neuralFieldStable : Prop
  conclusion : closedUnderHebbianUpdate ∧ hhDynamicsConvergent ∧ neuralFieldStable

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
