import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HebbianLearningPackage where
  synapseSet : Type u
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  synapticWeightUpdate : Prop
  correlationBasedPlasticity : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  correlationBasedPlasticityClosed : H.correlationBasedPlasticity
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧ H.synapticWeightUpdate ∧
  H.correlationBasedPlasticity ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.preSynapticActivityClosed
    (And.intro E.postSynapticActivityClosed
      (And.intro E.synapticWeightUpdateClosed
        (And.intro E.correlationBasedPlasticityClosed
          (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))))

end HautevilleHouse
end NeuroscienceConnectomicsLemmaCanonicalLaneLean