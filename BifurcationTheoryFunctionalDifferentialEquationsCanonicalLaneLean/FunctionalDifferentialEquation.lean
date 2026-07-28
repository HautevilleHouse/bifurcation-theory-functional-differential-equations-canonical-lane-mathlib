import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure FunctionalDifferentialEquationPackage where
  stateSpace : Type u
  delay : ℝ
  h : (stateSpace → stateSpace) → (stateSpace → stateSpace)
  solutionSpace : Type v
  linearizedOperator : stateSpace → stateSpace
  characteristicEquation : stateSpace → ℂ → Prop

structure FDEEvidence (P : FunctionalDifferentialEquationPackage) where
  delayPositive : P.delay > 0
  solutionSpaceNonempty : Nonempty P.solutionSpace
  linearizedOperatorContinuous : Continuous P.linearizedOperator

def FDEValid (P : FunctionalDifferentialEquationPackage) : Prop :=
  P.delay > 0 ∧ Nonempty P.solutionSpace

theorem fde_valid_from_evidence (P : FunctionalDifferentialEquationPackage) (E : FDEEvidence P) : FDEValid P := by
  exact And.intro E.delayPositive E.solutionSpaceNonempty

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse