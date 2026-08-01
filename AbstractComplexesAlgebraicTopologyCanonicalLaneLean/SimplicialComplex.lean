import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplexSet : Type v
  faceMap : simplexSet → List vertexSet
  faceRelations : Prop
  finiteDimensional : Prop
  pure : Prop
  homologyDefined : Prop

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  faceRelationsClosed : S.faceRelations
  finiteDimensionalClosed : S.finiteDimensional
  pureClosed : S.pure
  homologyDefinedClosed : S.homologyDefined

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.faceRelations ∧ S.finiteDimensional ∧ S.pure ∧ S.homologyDefined

theorem simplicial_complex_closed_from_evidence
    (S : SimplicialComplexPackage) (E : SimplicialComplexEvidence S) :
    SimplicialComplexClosed S := by
  exact And.intro E.faceRelationsClosed
    (And.intro E.finiteDimensionalClosed
      (And.intro E.pureClosed E.homologyDefinedClosed))

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse