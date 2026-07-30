import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WelfareEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSpace : Type v
  preferenceProfiles : Prop
  endowmentAllocation : Prop
  excessDemandFunction : Prop
  equilibriumPrice : Prop
  welfareTheorems : Prop
  equilibriumExistence : Prop

structure ArrowDebreuEquilibriumEvidence (E : ArrowDebreuEquilibriumPackage) where
  equilibriumExistenceClosed : E.equilibriumExistence
  welfareTheoremsClosed : E.welfareTheorems

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibriumPackage) : Prop :=
  E.equilibriumExistence ∧ E.welfareTheorems

theorem arrow_debreu_equilibrium_closed_from_evidence (E : ArrowDebreuEquilibriumPackage) (Ev : ArrowDebreuEquilibriumEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.equilibriumExistenceClosed Ev.welfareTheoremsClosed

end WelfareEconomicsCanonicalLaneLean
end HautevilleHouse