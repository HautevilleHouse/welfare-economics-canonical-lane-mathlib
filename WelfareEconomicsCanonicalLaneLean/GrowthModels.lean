import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  aggregateProductionFunction : Type u
  capitalAccumulation : Type v
  householdOptimization : Prop
  firmOptimization : Prop
  marketClearing : Prop
  steadyStateExistence : Prop
  optimalGrowthPath : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  householdOptimizationClosed : G.householdOptimization
  firmOptimizationClosed : G.firmOptimization
  marketClearingClosed : G.marketClearing
  steadyStateExistenceClosed : G.steadyStateExistence
  optimalGrowthPathClosed : G.optimalGrowthPath

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.householdOptimization ∧ G.firmOptimization ∧ G.marketClearing ∧
  G.steadyStateExistence ∧ G.optimalGrowthPath

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (Ev : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro Ev.householdOptimizationClosed (And.intro Ev.firmOptimizationClosed
    (And.intro Ev.marketClearingClosed (And.intro Ev.steadyStateExistenceClosed
      Ev.optimalGrowthPathClosed)))

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse