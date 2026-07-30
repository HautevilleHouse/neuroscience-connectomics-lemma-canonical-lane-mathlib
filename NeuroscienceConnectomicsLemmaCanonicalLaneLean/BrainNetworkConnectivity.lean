import canonicalLaneMathlib.AdmissibleClass

/-!
# Brain Network Connectivity Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure ConnectomicsGraphPackage where
  vertexType : Type u
  edgeType : Type v
  adjacencyMatrix : Type w
  graphIsWeighted : Prop
  graphIsDirected : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsGraphEvidence (C : ConnectomicsGraphPackage) where
  graphIsWeightedClosed : C.graphIsWeighted
  graphIsDirectedClosed : C.graphIsDirected
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsGraphClosed (C : ConnectomicsGraphPackage) : Prop :=
  C.graphIsWeighted ∧ C.graphIsDirected ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_graph_closed_from_evidence (C : ConnectomicsGraphPackage)
    (E : ConnectomicsGraphEvidence C) : ConnectomicsGraphClosed C := by
  exact And.intro E.graphIsWeightedClosed
    (And.intro E.graphIsDirectedClosed
      (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
