import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryNeuralCircuitPackage where
  tasteReceptorCells : Type u
  afferentNerveFibers : Type v
  brainstemNuclei : Type w
  thalamicRelay : Type x
  gustatoryCortex : Type y
  receptorToAfferentSynapse : Prop
  afferentToNucleiProjection : Prop
  nucleiToThalamusProjection : Prop
  thalamusToCortexProjection : Prop
  topographicMapping : Prop

structure GustatoryNeuralCircuitEvidence (C : GustatoryNeuralCircuitPackage) where
  receptorToAfferentSynapseClosed : C.receptorToAfferentSynapse
  afferentToNucleiProjectionClosed : C.afferentNucleiProjection
  nucleiToThalamusProjectionClosed : C.nucleiToThalamusProjection
  thalamusToCortexProjectionClosed : C.thalamusToCortexProjection
  topographicMappingClosed : C.topographicMapping

def GustatoryNeuralCircuitClosed (C : GustatoryNeuralCircuitPackage) : Prop := 
  C.receptorToAfferentSynapse ∧ C.afferentNerveFibers ∧ C.brainstemNuclei ∧ C.thalamicRelay ∧ C.gustatoryCortex

theorem gustatory_neural_circuit_closed_from_evidence (C : GustatoryNeuralCircuitPackage) (E : GustatoryNeuralCircuitEvidence C) : GustatoryNeuralCircuitClosed C := by
  exact And.intro E.receptorToAfferentSynapseClosed (And.intro E.afferentToNucleiProjectionClosed (And.intro E.nucleiToThalamusProjectionClosed (And.intro E.thalamusToCortexProjectionClosed E.topographicMappingClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse