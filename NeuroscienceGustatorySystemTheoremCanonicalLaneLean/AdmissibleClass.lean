import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryAdmittedObject where
  tasteReceptorModel : Type u
  signalTransductionPathway : Prop
  tasteQualityEncoding : Prop
  conclusion : tasteQualityEncoding

structure AdmissibleClass where
  object : GustatoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GustatoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse