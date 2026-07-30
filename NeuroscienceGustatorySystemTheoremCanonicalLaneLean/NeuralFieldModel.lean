import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure NeuralFieldModelPackage where
  neuralFieldDynamics : Prop
  synapticKernel : Prop
  firingRateFunction : Prop
  connectivityPattern : Prop
  attractorDynamics : Prop

structure NeuralFieldModelEvidence (N : NeuralFieldModelPackage) where
  neuralFieldDynamicsClosed : N.neuralFieldDynamics
  synapticKernelClosed : N.synapticKernel
  firingRateFunctionClosed : N.firingRateFunction
  connectivityPatternClosed : N.connectivityPattern
  attractorDynamicsClosed : N.attractorDynamics

def NeuralFieldModelClosed (N : NeuralFieldModelPackage) : Prop :=
  N.neuralFieldDynamics ∧ N.synapticKernel ∧ N.firingRateFunction ∧ N.connectivityPattern ∧ N.attractorDynamics

theorem neural_field_model_closed_from_evidence (N : NeuralFieldModelPackage) (E : NeuralFieldModelEvidence N) : NeuralFieldModelClosed N := by
  exact And.intro E.neuralFieldDynamicsClosed (And.intro E.synapticKernelClosed (And.intro E.firingRateFunctionClosed (And.intro E.connectivityPatternClosed E.attractorDynamicsClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse