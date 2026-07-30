import HautevilleHouse.WelfareEconomicsCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

theorem first_welfare_theorem (A : ArrowDebreuPackage) (Eq : ArrowDebreuEquilibriumPackage A) (prefsLocalNonSatiation : ∀ agent : Fin A.agents, ∀ x : ℝ, ∃ y : ℝ, A.preferences[agent] y > A.preferences[agent] x) : paretoOptimalAllocation A Eq.allocation :=
  by
    sorry

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
