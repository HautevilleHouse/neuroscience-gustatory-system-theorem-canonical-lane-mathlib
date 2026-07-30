import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

def GustatoryAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem gustatory_admissible_endgame (A : AdmissibleClass) :
    GustatoryAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse