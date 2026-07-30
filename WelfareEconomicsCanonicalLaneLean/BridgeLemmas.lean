import WelfareEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WelfareWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse
