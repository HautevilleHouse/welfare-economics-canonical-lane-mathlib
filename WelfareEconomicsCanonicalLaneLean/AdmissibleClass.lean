import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure WelfareAdmissibleObject where
  economy : Type u
  equilibrium : Prop
  welfareTheorem : Prop
  conclusion : welfareTheorem

structure WelfareAdmissibleClass where
  object : WelfareAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedWelfareClosure (A : WelfareAdmissibleClass) : Prop :=
  A.object.equilibrium ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
