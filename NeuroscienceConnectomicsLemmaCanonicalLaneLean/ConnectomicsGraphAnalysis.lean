import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  neuronNodes : Type u
  synapseEdges : Type v
  adjacencyMatrix : Prop
  graphLaplacian : Prop
  communityStructure : Prop
  smallWorldProperty : Prop
  hubIdentification : Prop
  networkEfficiency : Prop
  connectomicsClosed : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  adjacencyMatrixClosed : C.adjacencyMatrix
  graphLaplacianClosed : C.graphLaplacian
  communityStructureClosed : C.communityStructure
  smallWorldPropertyClosed : C.smallWorldProperty
  hubIdentificationClosed : C.hubIdentification
  networkEfficiencyClosed : C.networkEfficiency
  connectomicsClosedTerm : C.connectomicsClosed

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.adjacencyMatrix ∧ C.graphLaplacian ∧
  C.communityStructure ∧ C.smallWorldProperty ∧
  C.hubIdentification ∧ C.networkEfficiency ∧ C.connectomicsClosed

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.adjacencyMatrixClosed
    (And.intro E.graphLaplacianClosed
      (And.intro E.communityStructureClosed
        (And.intro E.smallWorldPropertyClosed
          (And.intro E.hubIdentificationClosed
            (And.intro E.networkEfficiencyClosed E.connectomicsClosedTerm)))))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse