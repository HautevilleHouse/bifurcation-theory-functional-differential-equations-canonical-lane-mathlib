import BifurcationTheoryFDE.LinearizationStability

namespace HautevilleHouse
namespace BifurcationTheoryFDE

structure BifurcationConditions (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) where
  eigenvalueCrossingCondition : Prop
  transversalityCondition : Prop
  nonresonanceCondition : Prop

structure BifurcationConditionsEvidence (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) (bc : BifurcationConditions α β fde) where
  eigenvalueCrossingConditionClosed : bc.eigenvalueCrossingCondition
  transversalityConditionClosed : bc.transversalityCondition
  nonresonanceConditionClosed : bc.nonresonanceCondition

def BifurcationConditionsClosed (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) (bc : BifurcationConditions α β fde) : Prop :=
  bc.eigenvalueCrossingCondition ∧ bc.transversalityCondition ∧ bc.nonresonanceCondition

theorem bifurcation_conditions_closed_from_evidence (α : Type u) (β : Type v) (fde : FunctionalDifferentialEquation α β) (bc : BifurcationConditions α β fde) (ev : BifurcationConditionsEvidence α β fde bc) : BifurcationConditionsClosed α β fde bc :=
  And.intro ev.eigenvalueCrossingConditionClosed (And.intro ev.transversalityConditionClosed ev.nonresonanceConditionClosed)

end BifurcationTheoryFDE
end HautevilleHouse