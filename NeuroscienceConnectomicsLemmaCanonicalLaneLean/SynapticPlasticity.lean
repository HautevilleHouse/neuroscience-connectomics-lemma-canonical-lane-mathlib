import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure SynapticPlasticityPackage where
  synapseType : Type u
  plasticityRules : Type v
  spikeTimingDependentPlasticity : Prop
  homeostaticPlasticity : Prop
  structuralPlasticity : Prop
  metaplasticity : Prop
  learningRuleConvergence : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : S.spikeTimingDependentPlasticity
  homeostaticPlasticityClosed : S.homeostaticPlasticity
  structuralPlasticityClosed : S.structuralPlasticity
  metaplasticityClosed : S.metaplasticity
  learningRuleConvergenceClosed : S.learningRuleConvergence

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.spikeTimingDependentPlasticity ∧ S.homeostaticPlasticity ∧ S.structuralPlasticity ∧
  S.metaplasticity ∧ S.learningRuleConvergence

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.homeostaticPlasticityClosed
      (And.intro E.structuralPlasticityClosed
        (And.intro E.metaplasticityClosed E.learningRuleConvergenceClosed)))

end HautevilleHouse
end NeuroscienceConnectomicsLemmaCanonicalLaneLean