import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryReceptorBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  doseResponseCurve : Prop
  competitiveBinding : Prop
  signalTransductionInitiation : Prop

structure GustatoryReceptorBindingEvidence (R : GustatoryReceptorBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  doseResponseCurveClosed : R.doseResponseCurve
  competitiveBindingClosed : R.competitiveBinding
  signalTransductionInitiationClosed : R.signalTransductionInitiation

def GustatoryReceptorBindingClosed (R : GustatoryReceptorBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.doseResponseCurve ∧ R.competitiveBinding ∧ R.signalTransductionInitiation

theorem gustatory_receptor_binding_closed_from_evidence (R : GustatoryReceptorBindingPackage) (E : GustatoryReceptorBindingEvidence R) : GustatoryReceptorBindingClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.doseResponseCurveClosed (And.intro E.competitiveBindingClosed E.signalTransductionInitiationClosed))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse