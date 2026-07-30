import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structre ArrowImpossibilityPackage where
  alternatives : Type u
  voters : Type v
  socialWelfareFunction : Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  impossibilityTheorem : Prop

structre ArrowImpossibilityEvidence (A : ArrowImpossibilityPackage) where
  impossibilityTheoremClosed : A.impossibilityTheorem

def ArrowImpossibilityClosed (A : ArrowImpossibilityPackage) : Prop :=
  A.impossibilityTheorem

theorem arrow_impossibility_closed_from_evidence (A : ArrowImpossibilityPackage) (Ev : ArrowImpossibilityEvidence A) :
    ArrowImpossibilityClosed A := by
  exact Ev.impossibilityTheoremClosed

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse