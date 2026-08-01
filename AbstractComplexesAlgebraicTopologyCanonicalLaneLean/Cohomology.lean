import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure CohomologyPackage where
  homology : HomologyPackage
  cohomologyGroups : ℕ → Type u
  cupProduct : Prop
  ringStructure : Prop
  poincareDuality : Prop

structure CohomologyEvidence (C : CohomologyPackage) where
  cupProductClosed : C.cupProduct
  ringStructureClosed : C.ringStructure
  poincareDualityClosed : C.poincareDuality

def CohomologyClosed (C : CohomologyPackage) : Prop :=
  C.cupProduct ∧ C.ringStructure ∧ C.poincareDuality

theorem cohomology_closed_from_evidence
    (C : CohomologyPackage) (E : CohomologyEvidence C) : CohomologyClosed C := by
  exact And.intro E.cupProductClosed
    (And.intro E.ringStructureClosed E.poincareDualityClosed)

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse