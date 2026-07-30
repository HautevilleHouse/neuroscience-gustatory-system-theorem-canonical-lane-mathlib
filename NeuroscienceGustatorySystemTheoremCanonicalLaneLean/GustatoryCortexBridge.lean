import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryCortexPackage where
  tasteReceptors : Type u
  corticalColumns : Type v
  connectivityMap : Prop
  neuralResponseModel : Prop
  adaptationDynamics : Prop

structure GustatoryCortexEvidence (G : GustatoryCortexPackage) where
  connectivityMapClosed : G.connectivityMap
  neuralResponseModelClosed : G.neuralResponseModel
  adaptationDynamicsClosed : G.adaptationDynamics

def GustatoryCortexClosed (G : GustatoryCortexPackage) : Prop :=
  G.connectivityMap ∧ G.neuralResponseModel ∧ G.adaptationDynamics

theorem gustatory_cortex_closed_from_evidence (G : GustatoryCortexPackage) (E : GustatoryCortexEvidence G) :
    GustatoryCortexClosed G := by
  exact And.intro E.connectivityMapClosed
    (And.intro E.neuralResponseModelClosed E.adaptationDynamicsClosed)

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse