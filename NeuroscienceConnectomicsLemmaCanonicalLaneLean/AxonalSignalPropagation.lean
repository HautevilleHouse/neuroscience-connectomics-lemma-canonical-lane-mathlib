import canonicalLaneMathlib.AdmissibleClass

/-!
# Axonal Signal Propagation Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure CableTheoryPackage where
  axonDiameter : Type u
  myelinSheathThickness : Type v
  membraneDynamics : HodgkinHuxleyPackage
  propagationSpeed : Prop
  cableEquation : Prop
  saltatoryConduction : Prop

structure CableTheoryEvidence (C : CableTheoryPackage) where
  propagationSpeedClosed : C.propagationSpeed
  cableEquationClosed : C.cableEquation
  saltatoryConductionClosed : C.saltatoryConduction

def CableTheoryClosed (C : CableTheoryPackage) : Prop :=
  C.propagationSpeed ∧ C.cableEquation ∧ C.saltatoryConduction

theorem cable_theory_closed_from_evidence (C : CableTheoryPackage) (E : CableTheoryEvidence C) :
    CableTheoryClosed C := by
  exact And.intro E.propagationSpeedClosed
    (And.intro E.cableEquationClosed E.saltatoryConductionClosed)

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
