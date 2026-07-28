import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure EquilibriumSolutionPackage (P : PhaseSpacePackage) (D : DelayOperatorPackage P) (B : BifurcationParameterPackage) where
  equilibriumPoint : P.manifoldType
  equilibriumCondition : Prop
  isolatedEquilibrium : Prop

def EquilibriumSolutionClosed {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} (E : EquilibriumSolutionPackage P D B) : Prop :=
  E.equilibriumCondition ∧ E.isolatedEquilibrium

structure EquilibriumSolutionEvidence {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} (E : EquilibriumSolutionPackage P D B) where
  equilibriumConditionClosed : E.equilibriumCondition
  isolatedEquilibriumClosed : E.isolatedEquilibrium

theorem equilibrium_solution_closed_from_evidence {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} (E : EquilibriumSolutionPackage P D B) (Ev : EquilibriumSolutionEvidence E) : EquilibriumSolutionClosed E := by
  exact And.intro Ev.equilibriumConditionClosed Ev.isolatedEquilibriumClosed

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse