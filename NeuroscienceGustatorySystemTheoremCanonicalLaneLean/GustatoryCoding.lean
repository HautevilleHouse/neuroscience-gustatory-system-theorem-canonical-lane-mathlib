import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGustatorySystemTheoremCanonicalLaneLean.GustatoryNeuralCircuit

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryCodingPackage {C : GustatoryNeuralCircuitPackage} where
  tasteModalities : Type u
  receptorTypes : Type v
  labeledLineCoding : Prop
  combinatorialCoding : Prop
  temporalCoding : Prop
  concentrationIntensityMapping : Prop

structure GustatoryCodingEvidence {C : GustatoryNeuralCircuitPackage} (D : GustatoryCodingPackage C) where
  labeledLineCodingClosed : D.labeledLineCoding
  combinatorialCodingClosed : D.combinatorialCoding
  temporalCodingClosed : D.temporalCoding
  concentrationIntensityMappingClosed : D.concentrationIntensityMapping

def GustatoryCodingClosed {C : GustatoryNeuralCircuitPackage} (D : GustatoryCodingPackage C) : Prop :=
  D.labeledLineCoding ∧ D.combinatorialCoding ∧ D.temporalCoding ∧ D.concentrationIntensityMapping

theorem gustatory_coding_closed_from_evidence {C : GustatoryNeuralCircuitPackage} (D : GustatoryCodingPackage C) (E : GustatoryCodingEvidence D) : GustatoryCodingClosed D := by
  exact And.intro E.labeledLineCodingClosed (And.intro E.combinatorialCodingClosed (And.intro E.temporalCodingClosed E.concentrationIntensityMappingClosed))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse