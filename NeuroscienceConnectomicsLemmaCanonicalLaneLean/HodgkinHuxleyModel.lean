import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionConductances : Type v
  gatingVariables : Type w
  capacitance : Prop
  leakConductance : Prop
  sodiumChannelModel : Prop
  potassiumChannelModel : Prop
  voltageClampData : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  capacitanceClosed : H.capacitance
  leakConductanceClosed : H.leakConductance
  sodiumChannelModelClosed : H.sodiumChannelModel
  potassiumChannelModelClosed : H.potassiumChannelModel
  voltageClampDataClosed : H.voltageClampData
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.capacitance ∧ H.leakConductance ∧ H.sodiumChannelModel ∧ H.potassiumChannelModel ∧ H.voltageClampData ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.leakConductanceClosed
      (And.intro E.sodiumChannelModelClosed
        (And.intro E.potassiumChannelModelClosed
          (And.intro E.voltageClampDataClosed E.actionPotentialGenerationClosed))))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse