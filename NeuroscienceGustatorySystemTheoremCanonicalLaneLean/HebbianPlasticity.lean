import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GustatorySystemTheoremCanonicalLaneLean

structure HebbianPlasticity where
  synapticWeight : Type u
  presynapticActivity : Prop
  postsynapticActivity : Prop
  ltpInduction : Prop
  ltdInduction : Prop
  weightDynamicsClosed : Prop
  hebbianLearningRule : Prop
  hebbianLearningRuleClosed : hebbianLearningRule

structure HebbianPlasticityEvidence (H : HebbianPlasticity) where
  weightDynamicsClosed : H.weightDynamicsClosed
  hebbianLearningRuleClosed : H.hebbianLearningRuleClosed
  ltpInductionClosed : H.ltpInduction
  ltdInductionClosed : H.ltdInduction

def HebbianPlasticityClosed (H : HebbianPlasticity) : Prop :=
  H.weightDynamicsClosed ∧ H.hebbianLearningRule ∧ H.ltpInduction ∧ H.ltdInduction

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticity) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightDynamicsClosed (And.intro E.hebbianLearningRuleClosed (And.intro E.ltpInductionClosed E.ltdInductionClosed))

end GustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse