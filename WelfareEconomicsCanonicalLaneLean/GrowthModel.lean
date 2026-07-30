import canonicalLaneMathlib.AdmissibleClass

/-!
# Growth Model Package
-/

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure GrowthModel where
  productionFunction : Type u
  capitalAccumulation : Type v
  consumptionPath : Type w
  steadyStateExistence : Prop
  saddlePathStability : Prop
  goldenRuleCapital : Prop

structure GrowthModelEvidence (G : GrowthModel) where
  steadyStateExistenceClosed : G.steadyStateExistence
  saddlePathStabilityClosed : G.saddlePathStability
  goldenRuleCapitalClosed : G.goldenRuleCapital

def GrowthModelClosed (G : GrowthModel) : Prop :=
  G.steadyStateExistence ∧ G.saddlePathStability ∧ G.goldenRuleCapital

theorem growth_model_closed_from_evidence (G : GrowthModel)
    (Ev : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro Ev.steadyStateExistenceClosed
    (And.intro Ev.saddlePathStabilityClosed Ev.goldenRuleCapitalClosed)

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
