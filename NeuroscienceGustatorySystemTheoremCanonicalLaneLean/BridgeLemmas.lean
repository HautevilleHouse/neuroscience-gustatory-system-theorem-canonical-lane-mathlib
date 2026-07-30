import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GustatoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse