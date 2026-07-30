import canonicalLaneMathlib.AdmissibleClass

/-!
# Cortical Field Dynamics Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  fieldType : Type u
  membranePotentialField : Type v
  firingRateField : Type w
  fieldEquation : Prop
  connectivityKernel : Prop
  stationarySolution : Prop
  travelingWaveSolution : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  fieldEquationClosed : N.fieldEquation
  connectivityKernelClosed : N.connectivityKernel
  stationarySolutionClosed : N.stationarySolution
  travelingWaveSolutionClosed : N.travelingWaveSolution

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.fieldEquation ∧ N.connectivityKernel ∧ N.stationarySolution ∧ N.travelingWaveSolution

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.fieldEquationClosed
    (And.intro E.connectivityKernelClosed
      (And.intro E.stationarySolutionClosed E.travelingWaveSolutionClosed))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
