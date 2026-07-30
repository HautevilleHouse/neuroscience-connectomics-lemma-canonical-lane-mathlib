import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure ConnectomicsGraphPackage where
  neuron : Type u
  synapse : Type v
  adjacency : Type w
  directedGraph : Prop
  weightedEdges : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  hubIdentification : Prop

structure ConnectomicsGraphEvidence (C : ConnectomicsGraphPackage) where
  directedGraphClosed : C.directedGraph
  weightedEdgesClosed : C.weightedEdges
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  hubIdentificationClosed : C.hubIdentification

def ConnectomicsGraphClosed (C : ConnectomicsGraphPackage) : Prop :=
  C.directedGraph ∧ C.weightedEdges ∧ C.smallWorldProperty ∧
  C.modularStructure ∧ C.hubIdentification

theorem connectomics_graph_closed_from_evidence (C : ConnectomicsGraphPackage)
    (E : ConnectomicsGraphEvidence C) : ConnectomicsGraphClosed C := by
  exact And.intro E.directedGraphClosed
    (And.intro E.weightedEdgesClosed
      (And.intro E.smallWorldPropertyClosed
        (And.intro E.modularStructureClosed E.hubIdentificationClosed)))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse