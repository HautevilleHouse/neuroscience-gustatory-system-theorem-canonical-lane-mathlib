import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  spikeTimingDependentPlasticity : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightUpdateRule ∧ H.longTermPotentiation ∧ H.spikeTimingDependentPlasticity

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightUpdateRuleClosed
    (And.intro E.longTermPotentiationClosed E.spikeTimingDependentPlasticityClosed)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse