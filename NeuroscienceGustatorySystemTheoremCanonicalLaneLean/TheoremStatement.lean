import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemTheoremCanonicalLaneLean

structure GustatoryTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : GustatoryTheoremStatement := {
  sourceKey := "neuroscience-gustatory-system-theorem-canonical-lane",
  theoremName := "Neuroscience Gustatory System Theorem",
  theoremObject := "Gustatory signal transduction and neural encoding closed under admissible class",
  classicalBoundary := "Unrestricted classical neurobiological boundary (e.g., in vivo validation)",
  manifoldConstrainedStatement := "Gustatory system theorem internalized through bridge and gate closure",
  certificateLane := "gustatory_constrained",
  carriedRemainder := "Open empirical boundary; closed bridge/gate core"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "neuroscience-gustatory-system-theorem-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "gustatory_constrained" := by
  rfl

end NeuroscienceGustatorySystemTheoremCanonicalLaneLean
end HautevilleHouse