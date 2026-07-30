import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure WelfareEconomicsPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  endowment : consumptionSet
  priceSystem : consumptionSet → ℝ

structure WelfareEconomicsEvidence (W : WelfareEconomicsPackage) where
  preferenceTransitive : ∀ x y z : W.consumptionSet, W.preferenceRelation x y → W.preferenceRelation y z → W.preferenceRelation x z
  preferenceComplete : ∀ x y : W.consumptionSet, W.preferenceRelation x y ∨ W.preferenceRelation y x

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
