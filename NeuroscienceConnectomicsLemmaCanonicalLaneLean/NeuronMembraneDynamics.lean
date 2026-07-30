import canonicalLaneMathlib.AdmissibleClass

/-!
# Neuron Membrane Dynamics Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannelConductances : Type v
  gatingVariables : Type w
  capacitanceEquation : Prop
  ionCurrentEquations : Prop
  gatingKinetics : Prop
  actionPotentialThreshold : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  capacitanceEquationClosed : H.capacitanceEquation
  ionCurrentEquationsClosed : H.ionCurrentEquations
  gatingKineticsClosed : H.gatingKinetics
  actionPotentialThresholdClosed : H.actionPotentialThreshold

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.capacitanceEquation ∧ H.ionCurrentEquations ∧ H.gatingKinetics ∧ H.actionPotentialThreshold

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.capacitanceEquationClosed
    (And.intro E.ionCurrentEquationsClosed
      (And.intro E.gatingKineticsClosed E.actionPotentialThresholdClosed))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
