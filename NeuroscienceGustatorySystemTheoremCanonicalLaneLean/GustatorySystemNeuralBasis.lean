import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryNeuralBasisPackage where
  tongueReceptorTypes : Nat
  tastePhenomenology : String
  peripheralNervePathways : Prop
  brainstemRelayStations : Prop
  thalamocorticalProjections : Prop
  dynamicNeuralRepresentation : Prop

structure GustatoryNeuralBasisEvidence (G : GustatoryNeuralBasisPackage) where
  tongueReceptorTypesClosed : G.tongueReceptorTypes = 5
  tastePhenomenologyClosed : G.tastePhenomenology = "sweet,sour,salty,bitter,umami"
  peripheralNervePathwaysClosed : G.peripheralNervePathways
  brainstemRelayStationsClosed : G.brainstemRelayStations
  thalamocorticalProjectionsClosed : G.thalamocorticalProjections
  dynamicNeuralRepresentationClosed : G.dynamicNeuralRepresentation

def GustatoryNeuralBasisClosed (G : GustatoryNeuralBasisPackage) : Prop :=
  G.tongueReceptorTypes = 5 ∧
  G.tastePhenomenology = "sweet,sour,salty,bitter,umami" ∧
  G.peripheralNervePathways ∧
  G.brainstemRelayStations ∧
  G.thalamocorticalProjections ∧
  G.dynamicNeuralRepresentation

theorem gustatory_neural_basis_closed_from_evidence
    (G : GustatoryNeuralBasisPackage) (E : GustatoryNeuralBasisEvidence G) :
    GustatoryNeuralBasisClosed G := by
  exact And.intro E.tongueReceptorTypesClosed
    (And.intro E.tastePhenomenologyClosed
      (And.intro E.peripheralNervePathwaysClosed
        (And.intro E.brainstemRelayStationsClosed
          (And.intro E.thalamocorticalProjectionsClosed
            E.dynamicNeuralRepresentationClosed))))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse