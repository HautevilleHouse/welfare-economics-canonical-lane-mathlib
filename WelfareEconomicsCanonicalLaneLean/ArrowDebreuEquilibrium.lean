import canonicalLaneMathlib.AdmissibleClass

/-!
# Arrow-Debreu Equilibrium Package
-/

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure ArrowDebreuEconomy where
  commodities : Type u
  consumers : Type v
  firms : Type w
  prices : Type x
  endowments : Type y
  preferences : Type z
  productionSets : Type u
  competitiveEquilibrium : Prop
  paretoOptimalAllocation : Prop

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  competitiveEquilibriumClosed : E.competitiveEquilibrium
  paretoOptimalAllocationClosed : E.paretoOptimalAllocation

def ArrowDebreuClosed (E : ArrowDebreuEconomy) : Prop :=
  E.competitiveEquilibrium ∧ E.paretoOptimalAllocation

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEconomy)
    (Ev : ArrowDebreuEvidence E) : ArrowDebreuClosed E := by
  exact And.intro Ev.competitiveEquilibriumClosed Ev.paretoOptimalAllocationClosed

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
