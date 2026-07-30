import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeightModel : Type u
  weightUpdateRule : Prop
  correlationDetector : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop
  hebbianRuleClosed : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  weightUpdateRuleClosed : H.weightUpdateRule
  correlationDetectorClosed : H.correlationDetector
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence
  hebbianRuleClosedTerm : H.hebbianRuleClosed

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧
  H.weightUpdateRule ∧ H.correlationDetector ∧
  H.longTermPotentiation ∧ H.longTermDepression ∧
  H.spikeTimingDependence ∧ H.hebbianRuleClosed

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.weightUpdateRuleClosed
        (And.intro E.correlationDetectorClosed
          (And.intro E.longTermPotentiationClosed
            (And.intro E.longTermDepressionClosed
              (And.intro E.spikeTimingDependenceClosed E.hebbianRuleClosedTerm))))))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse