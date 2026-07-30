import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  gatingVariables : Type v
  potassiumConductance : Prop
  sodiumConductance : Prop
  leakConductance : Prop
  actionPotentialModel : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  potassiumConductanceClosed : H.potassiumConductance
  sodiumConductanceClosed : H.sodiumConductance
  leakConductanceClosed : H.leakConductance
  actionPotentialModelClosed : H.actionPotentialModel

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.potassiumConductance ∧ H.sodiumConductance ∧ H.leakConductance ∧ H.actionPotentialModel

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.potassiumConductanceClosed
    (And.intro E.sodiumConductanceClosed
      (And.intro E.leakConductanceClosed E.actionPotentialModelClosed))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse