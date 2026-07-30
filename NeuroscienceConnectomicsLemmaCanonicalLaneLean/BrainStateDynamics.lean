import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure BrainStateDynamicsPackage where
  brainState : Type u
  dynamicalSystem : Type v
  attractorLandscape : Type w
  restingState : Prop
  taskEvokedTransition : Prop
  bifurcationAnalysis : Prop
  multistability : Prop

structure BrainStateDynamicsEvidence (B : BrainStateDynamicsPackage) where
  restingStateClosed : B.restingState
  taskEvokedTransitionClosed : B.taskEvokedTransition
  bifurcationAnalysisClosed : B.bifurcationAnalysis
  multistabilityClosed : B.multistability

def BrainStateDynamicsClosed (B : BrainStateDynamicsPackage) : Prop :=
  B.restingState ∧ B.taskEvokedTransition ∧
  B.bifurcationAnalysis ∧ B.multistability

theorem brain_state_dynamics_closed_from_evidence (B : BrainStateDynamicsPackage)
    (E : BrainStateDynamicsEvidence B) : BrainStateDynamicsClosed B := by
  exact And.intro E.restingStateClosed
    (And.intro E.taskEvokedTransitionClosed
      (And.intro E.bifurcationAnalysisClosed E.multistabilityClosed))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse