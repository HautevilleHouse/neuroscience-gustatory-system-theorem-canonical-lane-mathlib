import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GustatoryAdmittedObject where
  space : GustatorySpace
  tasteSystemIdentified : Prop
  neuralEncodingComplete : Prop
  conclusion : neuralEncodingComplete

def GustatoryWitnessClosed (O : GustatoryAdmittedObject) : Prop :=
  O.neuralEncodingComplete

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse