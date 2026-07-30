import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.HodgkinHuxleyModel

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatorySignalCascadePackage {H : HodgkinHuxleyPackage} where
  tasteReceptorActivation : Prop
  gProteinCoupledReceptor : Prop
  secondMessengerSignaling : Prop
  neurotransmitterRelease : Prop
  gustatoryCortexActivation : Prop

structure GustatorySignalCascadeEvidence {H : HodgkinHuxleyPackage} (G : GustatorySignalCascadePackage H) where
  tasteReceptorActivationClosed : G.tasteReceptorActivation
  gProteinCoupledReceptorClosed : G.gProteinCoupledReceptor
  secondMessengerSignalingClosed : G.secondMessengerSignaling
  neurotransmitterReleaseClosed : G.neurotransmitterRelease
  gustatoryCortexActivationClosed : G.gustatoryCortexActivation

def GustatorySignalCascadeClosed {H : HodgkinHuxleyPackage} (G : GustatorySignalCascadePackage H) : Prop :=
  G.tasteReceptorActivation ∧ G.gProteinCoupledReceptor ∧ G.secondMessengerSignaling ∧
  G.neurotransmitterRelease ∧ G.gustatoryCortexActivation

theorem gustatory_signal_cascade_closed_from_evidence {H : HodgkinHuxleyPackage}
    (G : GustatorySignalCascadePackage H) (E : GustatorySignalCascadeEvidence G) :
    GustatorySignalCascadeClosed G := by
  exact And.intro E.tasteReceptorActivationClosed
    (And.intro E.gProteinCoupledReceptorClosed
      (And.intro E.secondMessengerSignalingClosed
        (And.intro E.neurotransmitterReleaseClosed E.gustatoryCortexActivationClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse