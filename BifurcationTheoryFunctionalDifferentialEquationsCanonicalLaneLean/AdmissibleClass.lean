import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure BifurcationAdmittedObject where
  phaseSpace : Type u
  delay : ℝ
  parameterSpace : Type v
  functionalDE : (phaseSpace → parameterSpace → phaseSpace) → Prop
  equilibrium : phaseSpace
  bifurcationCondition : Prop
  conclusion : bifurcationCondition

structure BifurcationAdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.bifurcationCondition

def admittedClosure (A : BifurcationAdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse