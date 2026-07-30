import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeightDynamics : Type u
  preSynapticActivity : Type v
  postSynapticActivity : Type w
  hebbianRule : Prop
  weightChangeRate : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  weightChangeRateClosed : H.weightChangeRate
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.weightChangeRate ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed
    (And.intro E.weightChangeRateClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.spikeTimingDependenceClosed)))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse