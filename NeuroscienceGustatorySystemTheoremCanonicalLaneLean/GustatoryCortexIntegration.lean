import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryCortexIntegrationPackage where
  corticalMapFormation : Prop
  multimodalIntegration : Prop
  palatabilityEncoding : Prop
  learningDependentPlasticity : Prop
  perceptualDecisionMaking : Prop

structure GustatoryCortexIntegrationEvidence (G : GustatoryCortexIntegrationPackage) where
  corticalMapFormationClosed : G.corticalMapFormation
  multimodalIntegrationClosed : G.multimodalIntegration
  palatabilityEncodingClosed : G.palatabilityEncoding
  learningDependentPlasticityClosed : G.learningDependentPlasticity
  perceptualDecisionMakingClosed : G.perceptualDecisionMaking

def GustatoryCortexIntegrationClosed (G : GustatoryCortexIntegrationPackage) : Prop :=
  G.corticalMapFormation ∧ G.multimodalIntegration ∧ G.palatabilityEncoding ∧ G.learningDependentPlasticity ∧ G.perceptualDecisionMaking

theorem gustatory_cortex_integration_closed_from_evidence (G : GustatoryCortexIntegrationPackage) (E : GustatoryCortexIntegrationEvidence G) : GustatoryCortexIntegrationClosed G := by
  exact And.intro E.corticalMapFormationClosed (And.intro E.multimodalIntegrationClosed (And.intro E.palatabilityEncodingClosed (And.intro E.learningDependentPlasticityClosed E.perceptualDecisionMakingClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse