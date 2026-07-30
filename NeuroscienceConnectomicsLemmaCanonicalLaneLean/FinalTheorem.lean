import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

def ConstrainedConnectomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_connectomics_endgame (A : AdmissibleClass) : ConstrainedConnectomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
