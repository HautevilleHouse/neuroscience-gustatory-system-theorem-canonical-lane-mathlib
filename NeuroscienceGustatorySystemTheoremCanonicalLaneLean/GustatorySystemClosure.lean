import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.GustatoryNeuralCircuit
import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.GustatoryCoding
import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.HedonicValence

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

def GustatoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem gustatory_endgame (A : AdmissibleClass) : GustatoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse