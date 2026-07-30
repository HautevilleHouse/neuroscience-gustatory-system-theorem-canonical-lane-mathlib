import canonicalLaneMathlib.AdmissibleClass
import GustatorySystemTheoremCanonicalLaneLean.BridgeLemmas
import GustatorySystemTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GustatorySystemTheoremCanonicalLaneLean

def ConstrainedGustatoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gustatory_endgame (A : AdmissibleClass) :
    ConstrainedGustatoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse