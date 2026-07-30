import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeights : Type u
  learningRate : Prop
  weightUpdateRule : Prop
  stabilityCondition : Prop
  longTermPotentiation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightUpdateRuleClosed : H.weightUpdateRule
  stabilityConditionClosed : H.stabilityCondition
  longTermPotentiationClosed : H.longTermPotentiation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightUpdateRule ∧ H.stabilityCondition ∧ H.longTermPotentiation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightUpdateRuleClosed
    (And.intro E.stabilityConditionClosed E.longTermPotentiationClosed)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse