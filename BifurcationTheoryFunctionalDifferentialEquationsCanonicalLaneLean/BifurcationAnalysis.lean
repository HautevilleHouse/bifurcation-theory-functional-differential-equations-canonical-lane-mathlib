import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.FunctionalDifferentialEquation

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure BifurcationAnalysisPackage {P : FunctionalDifferentialEquationPackage} where
  equilibriumPoint : P.stateSpace
  parameterValue : ℝ
  bifurcationConditionSatisfied : Prop
  crossingCondition : Prop
  nonresonanceCondition : Prop

structure BifurcationEvidence {P : FunctionalDifferentialEquationPackage} (A : BifurcationAnalysisPackage P) where
  equilibriumClosed : True
  bifurcationConditionClosed : A.bifurcationConditionSatisfied
  crossingConditionClosed : A.crossingCondition
  nonresonanceClosed : A.nonresonanceCondition

def BifurcationAnalysisClosed {P : FunctionalDifferentialEquationPackage} (A : BifurcationAnalysisPackage P) : Prop :=
  A.bifurcationConditionSatisfied ∧ A.crossingCondition ∧ A.nonresonanceCondition

theorem bifurcation_analysis_closed_from_evidence {P : FunctionalDifferentialEquationPackage} (A : BifurcationAnalysisPackage P) (E : BifurcationEvidence A) : BifurcationAnalysisClosed A := by
  exact And.intro E.bifurcationConditionClosed (And.intro E.crossingConditionClosed E.nonresonanceClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse