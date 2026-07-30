import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumChannelGating : Prop
  potassiumChannelGating : Prop
  leakCurrent : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumChannelGatingClosed : H.sodiumChannelGating
  potassiumChannelGatingClosed : H.potassiumChannelGating
  leakCurrentClosed : H.leakCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumChannelGating ∧ H.potassiumChannelGating ∧ H.leakCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelGatingClosed
    (And.intro E.potassiumChannelGatingClosed
      (And.intro E.leakCurrentClosed E.actionPotentialGenerationClosed))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse