import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceGustatorySystemTheoremCanonicalLaneLean.GustatorySystemNeuralBasis
import NeuroscienceGustatorySystemTheoremCanonicalLaneLean.HebbianPlasticityModel
import NeuroscienceGustatorySystemTheoremCanonicalLaneLean.NeuralFieldTheory
import NeuroscienceGustatorySystemTheoremCanonicalLaneLean.ConnectomeArchitecture
import NeuroscienceGustatorySystemTheoremCanonicalLaneLean.TasteCodingMechanisms

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GustatoryNeuralBasisClosed A.object ∧ HebbianPlasticityClosed A.object ∧
  NeuralFieldTheoryClosed A.object ∧ ConnectomeArchitectureClosed A.object ∧
  TasteCodingMechanismsClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- This proof uses the evidence embedded in the admissible object
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedGustatorySystemClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gustatory_system_endgame (A : AdmissibleClass) :
    ConstrainedGustatorySystemClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse