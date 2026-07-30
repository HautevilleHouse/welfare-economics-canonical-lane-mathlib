import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

def ConstrainedWelfareClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_welfare_endgame (A : AdmissibleClass) :
    ConstrainedWelfareClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
