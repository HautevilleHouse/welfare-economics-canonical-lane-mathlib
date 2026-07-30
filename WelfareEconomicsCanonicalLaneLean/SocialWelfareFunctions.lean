import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure SocialWelfareFunctionPackage where
  individualPreferences : Type u
  socialRanking : Type v
  paretoPrinciple : Prop
  independenceOfIrrelevantAlternatives : Prop
  nondictatorship : Prop
  existenceSocialWelfareFunction : Prop
  impossibilityTheorem : Prop

structure SocialWelfareFunctionEvidence (S : SocialWelfareFunctionPackage) where
  paretoPrincipleClosed : S.paretoPrinciple
  independenceClosed : S.independenceOfIrrelevantAlternatives
  nondictatorshipClosed : S.nondictatorship
  existenceClosed : S.existenceSocialWelfareFunction
  impossibilityClosed : S.impossibilityTheorem

def SocialWelfareFunctionClosed (S : SocialWelfareFunctionPackage) : Prop :=
  S.paretoPrinciple ∧ S.independenceOfIrrelevantAlternatives ∧ S.nondictatorship ∧
  S.existenceSocialWelfareFunction ∧ S.impossibilityTheorem

theorem social_welfare_function_closed_from_evidence (S : SocialWelfareFunctionPackage)
    (Ev : SocialWelfareFunctionEvidence S) : SocialWelfareFunctionClosed S := by
  exact And.intro Ev.paretoPrincipleClosed (And.intro Ev.independenceClosed
    (And.intro Ev.nondictatorshipClosed (And.intro Ev.existenceClosed Ev.impossibilityClosed)))

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse