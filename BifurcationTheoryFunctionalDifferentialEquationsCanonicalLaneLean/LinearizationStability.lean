import BifurcationTheoryFDE.FunctionalDifferentialEquation

namespace HautevilleHouse
namespace BifurcationTheoryFDE

structure LinearizationStability (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) where
  linearizedOperator : Type w
  spectrumCriterion : Prop
  stabilityCondition : Prop

structure LinearizationStabilityEvidence (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) (ls : LinearizationStability α β fde) where
  spectrumCriterionClosed : ls.spectrumCriterion
  stabilityConditionClosed : ls.stabilityCondition

def LinearizationStabilityClosed (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) (ls : LinearizationStability α β fde) : Prop :=
  ls.spectrumCriterion ∧ ls.stabilityCondition

theorem linearization_stability_closed_from_evidence (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) (ls : LinearizationStability α β fde) (ev : LinearizationStabilityEvidence α β fde ls) : LinearizationStabilityClosed α β fde ls :=
  And.intro ev.spectrumCriterionClosed ev.stabilityConditionClosed

end BifurcationTheoryFDE
end HautevilleHouse