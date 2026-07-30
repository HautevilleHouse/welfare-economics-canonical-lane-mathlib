import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  r : X → X → Prop
  transitive : ∀ x y z : X, r x y → r y z → r x z
  complete : ∀ x y : X, r x y ∨ r y x

structure UtilityFunction (X : Type u) where
  f : X → ℝ

structure UtilityRepresentation (X : Type u) (P : PreferenceRelation X) (U : UtilityFunction X) where
  representation : ∀ x y : X, P.r x y ↔ U.f x ≤ U.f y
  continuousRepresentation : Continuous U.f

def UtilityClosure (X : Type u) (P : PreferenceRelation X) (U : UtilityFunction X) : Prop :=
  ∃ rep : UtilityRepresentation X P U, True

theorem utility_closure_from_evidence (X : Type u) (P : PreferenceRelation X) (U : UtilityFunction X) (rep : UtilityRepresentation X P U) : UtilityClosure X P U :=
  Exists.intro rep trivial

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
