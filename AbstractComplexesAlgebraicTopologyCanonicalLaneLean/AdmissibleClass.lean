import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure AbstractComplex where
  carrier : Type u
  topology : TopologicalSpace carrier
  dimension : ℕ

structure AdmittedComplex where
  complex : AbstractComplex
  finiteCW : Prop
  simplyConnected : Prop
  simplicialModel : Type u
  simplicialTopology : TopologicalSpace simplicialModel
  homotopyEquivalentToSimplicial : Prop
  conclusion : homotopyEquivalentToSimplicial

structure AdmissibleClass where
  object : AdmittedComplex
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ComplexWitnessClosed (O : AdmittedComplex) : Prop :=
  O.conclusion

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse