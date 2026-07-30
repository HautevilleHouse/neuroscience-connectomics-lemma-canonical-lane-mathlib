import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  stateSpace : Type
  dynamics : HodgkinHuxleyState -> Float -> HodgkinHuxleyState
  convergenceProperty : Prop
  convergenceProof : convergenceProperty

structure HodgkinHuxleyEvidence (P : HodgkinHuxleyPackage) where
  convergenceClosed : P.convergenceProperty

def HodgkinHuxleyClosed (P : HodgkinHuxleyPackage) : Prop :=
  P.convergenceProperty

theorem hodgkin_huxley_closed_from_evidence (P : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence P) : HodgkinHuxleyClosed P := by
  exact E.convergenceClosed

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
