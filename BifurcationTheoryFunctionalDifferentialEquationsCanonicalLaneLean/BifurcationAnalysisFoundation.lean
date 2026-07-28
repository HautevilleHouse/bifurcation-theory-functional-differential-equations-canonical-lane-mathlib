import canonicalLaneMathlib.AdmissibleClass
import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.PhaseSpace
import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.DelayOperator
import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.BifurcationParameter
import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.EquilibriumSolution
import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.Linearization
import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.HopfBifurcation

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure BifurcationAnalysisFoundation where
  phaseSpace : PhaseSpacePackage
  phaseSpaceEvidence : PhaseSpaceEvidence phaseSpace
  delayOperator : DelayOperatorPackage phaseSpace
  delayOperatorEvidence : DelayOperatorEvidence delayOperator
  parameter : BifurcationParameterPackage
  parameterEvidence : BifurcationParameterEvidence parameter
  equilibrium : EquilibriumSolutionPackage phaseSpace delayOperator parameter
  equilibriumEvidence : EquilibriumSolutionEvidence equilibrium
  linearization : LinearizationPackage equilibrium
  linearizationEvidence : LinearizationEvidence linearization
  hopfBifurcation : HopfBifurcationPackage linearization
  hopfBifurcationEvidence : HopfBifurcationEvidence hopfBifurcation

def BifurcationAnalysisFoundationClosed (F : BifurcationAnalysisFoundation) : Prop :=
  PhaseSpaceClosed F.phaseSpace ∧
  DelayOperatorClosed F.delayOperator ∧
  BifurcationParameterClosed F.parameter ∧
  EquilibriumSolutionClosed F.equilibrium ∧
  LinearizationClosed F.linearization ∧
  HopfBifurcationClosed F.hopfBifurcation

theorem bifurcation_analysis_foundation_closed_from_evidence (F : BifurcationAnalysisFoundation) : BifurcationAnalysisFoundationClosed F := by
  exact And.intro (phase_space_closed_from_evidence F.phaseSpace F.phaseSpaceEvidence)
    (And.intro (delay_operator_closed_from_evidence F.delayOperator F.delayOperatorEvidence)
      (And.intro (bifurcation_parameter_closed_from_evidence F.parameter F.parameterEvidence)
        (And.intro (equilibrium_solution_closed_from_evidence F.equilibrium F.equilibriumEvidence)
          (And.intro (linearization_closed_from_evidence F.linearization F.linearizationEvidence)
            (hopf_bifurcation_closed_from_evidence F.hopfBifurcation F.hopfBifurcationEvidence)))))

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse