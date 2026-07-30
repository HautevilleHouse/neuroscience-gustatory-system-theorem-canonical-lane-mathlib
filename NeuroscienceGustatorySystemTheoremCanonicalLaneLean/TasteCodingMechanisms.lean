import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure TasteCodingMechanismsPackage where
  labeledLineCoding : Prop
  acrossFiberPattern : Prop
  temporalCoding : Prop
  populationCoding : Prop
  combinatorialCoding : Prop

structure TasteCodingMechanismsEvidence (T : TasteCodingMechanismsPackage) where
  labeledLineCodingClosed : T.labeledLineCoding
  acrossFiberPatternClosed : T.acrossFiberPattern
  temporalCodingClosed : T.temporalCoding
  populationCodingClosed : T.populationCoding
  combinatorialCodingClosed : T.combinatorialCoding

def TasteCodingMechanismsClosed (T : TasteCodingMechanismsPackage) : Prop :=
  T.labeledLineCoding ∧
  T.acrossFiberPattern ∧
  T.temporalCoding ∧
  T.populationCoding ∧
  T.combinatorialCoding

theorem taste_coding_mechanisms_closed_from_evidence
    (T : TasteCodingMechanismsPackage) (E : TasteCodingMechanismsEvidence T) :
    TasteCodingMechanismsClosed T := by
  exact And.intro E.labeledLineCodingClosed
    (And.intro E.acrossFiberPatternClosed
      (And.intro E.temporalCodingClosed
        (And.intro E.populationCodingClosed
          E.combinatorialCodingClosed)))

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse