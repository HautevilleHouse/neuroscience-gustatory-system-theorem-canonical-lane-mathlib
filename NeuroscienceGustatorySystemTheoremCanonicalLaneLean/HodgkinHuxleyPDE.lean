import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GustatorySystemTheoremCanonicalLaneLean

structure HodgkinHuxleyPDE where
  membranePotential : Type u
  ionChannels : Prop
  gatingVariables : Prop
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  stimulusCurrent : Prop
  spikeGeneration : Prop
  spikeGenerationClosed : spikeGeneration

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPDE) where
  spikeGenerationClosed : H.spikeGeneration
  ionChannelsClosed : H.ionChannels
  gatingVariablesClosed : H.gatingVariables

def HodgkinHuxleyClosed (H : HodgkinHuxleyPDE) : Prop :=
  H.spikeGeneration ∧ H.ionChannels ∧ H.gatingVariables

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPDE) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.spikeGenerationClosed (And.intro E.ionChannelsClosed E.gatingVariablesClosed)

end GustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse