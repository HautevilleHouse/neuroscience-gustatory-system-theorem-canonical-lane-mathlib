import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeightUpdate : Prop
  coincidenceDetection : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  coincidenceDetectionClosed : H.coincidenceDetection
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.synapticWeightUpdate ∧
  H.coincidenceDetection ∧
  H.longTermPotentiation ∧
  H.longTermDepression ∧
  H.spikeTimingDependentPlasticity

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.synapticWeightUpdateClosed
    (And.intro E.coincidenceDetectionClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed
          E.spikeTimingDependentPlasticityClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse