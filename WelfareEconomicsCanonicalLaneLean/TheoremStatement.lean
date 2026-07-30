import HautevilleHouse.WelfareEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

def WelfareWitnessClosed (e : WelfareEconomy) : Prop :=
  ∃ allocation, ParetoOptimum e allocation ∧ e.preferences e.agents allocation allocation

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

sourceTheoremStatement : TheoremStatement := {
  sourceKey := "welfare-economics-canonical-lane",
  theoremName := "First and Second Welfare Theorems",
  theoremObject := "competitive equilibria are Pareto optimal and vice versa under convexity",
  classicalBoundary := "classical boundary: infinite-dimensional spaces, non-convexities, externalities",
  constrainedStatement := "For admissible classes satisfying bridgeClosed and gateClosed, constrained welfare closure holds.",
  carriedRemainder := "classical boundary remains open; carried as remainderRecorded in gate condition."
}

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse