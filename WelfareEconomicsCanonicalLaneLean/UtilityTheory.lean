import canonicalLaneMathlib.AdmissibleClass

/-!
# Utility Theory Package
-/

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure UtilityFunction where
  domain : Type u
  codomain : Type v
  ordering : Type w
  continuous : Prop
  strictlyMonotonic : Prop
  strictlyQuasiconcave : Prop
  representation : Prop

structure UtilityEvidence (U : UtilityFunction) where
  continuousClosed : U.continuous
  strictlyMonotonicClosed : U.strictlyMonotonic
  strictlyQuasiconcaveClosed : U.strictlyQuasiconcave
  representationClosed : U.representation

def UtilityClosed (U : UtilityFunction) : Prop :=
  U.continuous ∧ U.strictlyMonotonic ∧ U.strictlyQuasiconcave ∧ U.representation

theorem utility_closed_from_evidence (U : UtilityFunction)
    (Ev : UtilityEvidence U) : UtilityClosed U := by
  exact And.intro Ev.continuousClosed
    (And.intro Ev.strictlyMonotonicClosed
      (And.intro Ev.strictlyQuasiconcaveClosed Ev.representationClosed))

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
