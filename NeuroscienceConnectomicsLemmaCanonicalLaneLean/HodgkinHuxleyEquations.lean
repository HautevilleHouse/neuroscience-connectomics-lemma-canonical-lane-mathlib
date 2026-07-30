import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  neuronMembrane : Type u
  ionChannelDynamics : Type v
  membranePotentialDynamics : Prop
  sodiumChannelKinetics : Prop
  potassiumChannelKinetics : Prop
  leakageConductance : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquationsPackage) where
  membranePotentialDynamicsClosed : H.membranePotentialDynamics
  sodiumChannelKineticsClosed : H.sodiumChannelKinetics
  potassiumChannelKineticsClosed : H.potassiumChannelKinetics
  leakageConductanceClosed : H.leakageConductance
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.membranePotentialDynamics ∧ H.sodiumChannelKinetics ∧ H.potassiumChannelKinetics ∧
  H.leakageConductance ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_equations_closed_from_evidence (H : HodgkinHuxleyEquationsPackage)
    (E : HodgkinHuxleyEquationsEvidence H) : HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.membranePotentialDynamicsClosed
    (And.intro E.sodiumChannelKineticsClosed
      (And.intro E.potassiumChannelKineticsClosed
        (And.intro E.leakageConductanceClosed E.actionPotentialGenerationClosed)))

end HautevilleHouse
end NeuroscienceConnectomicsLemmaCanonicalLaneLean