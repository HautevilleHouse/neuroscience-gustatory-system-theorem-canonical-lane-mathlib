import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.GustatoryCoding

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure HedonicValencePackage {C : GustatoryNeuralCircuitPackage} {D : GustatoryCodingPackage C} where
  palatabilityEvaluation : Prop
  rewardCircuitActivation : Prop
  aversiveSignal : Prop
  valenceIntegration : Prop
  behavioralOutput : Prop

structure HedonicValenceEvidence {C : GustatoryNeuralCircuitPackage} {D : GustatoryCodingPackage C} (H : HedonicValencePackage C D) where
  palatabilityEvaluationClosed : H.palatabilityEvaluation
  rewardCircuitActivationClosed : H.rewardCircuitActivation
  aversiveSignalClosed : H.aversiveSignal
  valenceIntegrationClosed : H.valenceIntegration
  behavioralOutputClosed : H.behavioralOutput

def HedonicValenceClosed {C : GustatoryNeuralCircuitPackage} {D : GustatoryCodingPackage C} (H : HedonicValencePackage C D) : Prop :=
  H.palatabilityEvaluation ∧ H.rewardCircuitActivation ∧ H.aversiveSignal ∧ H.valenceIntegration ∧ H.behavioralOutput

theorem hedonic_valence_closed_from_evidence {C : GustatoryNeuralCircuitPackage} {D : GustatoryCodingPackage C} (H : HedonicValencePackage C D) (E : HedonicValenceEvidence H) : HedonicValenceClosed H := by
  exact And.intro E.palatabilityEvaluationClosed (And.intro E.rewardCircuitActivationClosed (And.intro E.aversiveSignalClosed (And.intro E.valenceIntegrationClosed E.behavioralOutputClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse