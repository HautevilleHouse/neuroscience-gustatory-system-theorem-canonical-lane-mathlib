import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure TasteTransductionPathwayPackage where
  tasteReceptorCellActivation : Prop
  secondMessengerCascade : Prop
  neurotransmitterRelease : Prop
  afferentNerveFiring : Prop
  signalIntegrationInBrainstem : Prop

structure TasteTransductionPathwayEvidence (T : TasteTransductionPathwayPackage) where
  tasteReceptorCellActivationClosed : T.tasteReceptorCellActivation
  secondMessengerCascadeClosed : T.secondMessengerCascade
  neurotransmitterReleaseClosed : T.neurotransmitterRelease
  afferentNerveFiringClosed : T.afferentNerveFiring
  signalIntegrationInBrainstemClosed : T.signalIntegrationInBrainstem

def TasteTransductionPathwayClosed (T : TasteTransductionPathwayPackage) : Prop :=
  T.tasteReceptorCellActivation ∧ T.secondMessengerCascade ∧ T.neurotransmitterRelease ∧ T.afferentNerveFiring ∧ T.signalIntegrationInBrainstem

theorem taste_transduction_pathway_closed_from_evidence (T : TasteTransductionPathwayPackage) (E : TasteTransductionPathwayEvidence T) : TasteTransductionPathwayClosed T := by
  exact And.intro E.tasteReceptorCellActivationClosed (And.intro E.secondMessengerCascadeClosed (And.intro E.neurotransmitterReleaseClosed (And.intro E.afferentNerveFiringClosed E.signalIntegrationInBrainstemClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse