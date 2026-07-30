import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | ConnectomicsAdmittedObject obj => obj.closedUnderHebbianUpdate
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion.1

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
