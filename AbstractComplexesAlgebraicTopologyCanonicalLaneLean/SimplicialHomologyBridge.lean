import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractComplexesAlgebraicTopologyCanonicalLaneLean.SimplicialComplex
import HautevilleHouse.AbstractComplexesAlgebraicTopologyCanonicalLaneLean.ChainComplex
import HautevilleHouse.AbstractComplexesAlgebraicTopologyCanonicalLaneLean.Homology

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SimplicialComplexClosed A.object ∧ ChainComplexClosed A.object.chain ∧ HomologyClosed A.object.homology

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A with ⟨obj, hs, hc, hh⟩
  exact ⟨hs, hc, hh⟩

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse