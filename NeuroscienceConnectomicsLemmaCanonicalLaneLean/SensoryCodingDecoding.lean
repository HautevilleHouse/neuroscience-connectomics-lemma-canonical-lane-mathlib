import canonicalLaneMathlib.AdmissibleClass

/-!
# Sensory Coding and Decoding Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure SensoryCodingPackage where
  stimulusSpace : Type u
  neuralResponseSpace : Type v
  encodingModel : Prop
  decodingModel : Prop
  mutualInformation : Prop
  efficientCodingHypothesis : Prop

structure SensoryCodingEvidence (S : SensoryCodingPackage) where
  encodingModelClosed : S.encodingModel
  decodingModelClosed : S.decodingModel
  mutualInformationClosed : S.mutualInformation
  efficientCodingHypothesisClosed : S.efficientCodingHypothesis

def SensoryCodingClosed (S : SensoryCodingPackage) : Prop :=
  S.encodingModel ∧ S.decodingModel ∧ S.mutualInformation ∧ S.efficientCodingHypothesis

theorem sensory_coding_closed_from_evidence (S : SensoryCodingPackage) (E : SensoryCodingEvidence S) :
    SensoryCodingClosed S := by
  exact And.intro E.encodingModelClosed
    (And.intro E.decodingModelClosed
      (And.intro E.mutualInformationClosed E.efficientCodingHypothesisClosed))

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse
