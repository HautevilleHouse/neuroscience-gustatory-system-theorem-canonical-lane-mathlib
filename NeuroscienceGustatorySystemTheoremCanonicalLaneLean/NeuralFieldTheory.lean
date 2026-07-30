import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  meanFieldApproximation : Prop
  neuralFieldEquation : Prop
  stationarySolutions : Prop
  travelingWaves : Prop
  patternFormation : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  meanFieldApproximationClosed : N.meanFieldApproximation
  neuralFieldEquationClosed : N.neuralFieldEquation
  stationarySolutionsClosed : N.stationarySolutions
  travelingWavesClosed : N.travelingWaves
  patternFormationClosed : N.patternFormation

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.meanFieldApproximation ∧
  N.neuralFieldEquation ∧
  N.stationarySolutions ∧
  N.travelingWaves ∧
  N.patternFormation

theorem neural_field_theory_closed_from_evidence
    (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.meanFieldApproximationClosed
    (And.intro E.neuralFieldEquationClosed
      (And.intro E.stationarySolutionsClosed
        (And.intro E.travelingWavesClosed
          E.patternFormationClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse