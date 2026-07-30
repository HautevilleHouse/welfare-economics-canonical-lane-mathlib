import WelfareEconomicsCanonicalLaneLean.GrowthModel

/-!
# Asset Pricing Package
-/

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stochasticDiscountFactor : Type u
  statePrices : Type v
  riskFreeRate : Prop
  riskPremium : Prop
  pricingKernel : Prop
  noArbitrage : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  riskFreeRateClosed : A.riskFreeRate
  riskPremiumClosed : A.riskPremium
  pricingKernelClosed : A.pricingKernel
  noArbitrageClosed : A.noArbitrage

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.riskFreeRate ∧ A.riskPremium ∧ A.pricingKernel ∧ A.noArbitrage

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (Ev : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro Ev.riskFreeRateClosed
    (And.intro Ev.riskPremiumClosed (And.intro Ev.pricingKernelClosed Ev.noArbitrageClosed))

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
