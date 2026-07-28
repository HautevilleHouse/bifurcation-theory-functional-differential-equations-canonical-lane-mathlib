import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure LinearizationPackage {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} (Eq : EquilibriumSolutionPackage P D B) where
  linearOperator : Type u
  spectrumAnalysis : Prop
  stabilityCriterion : Prop

def LinearizationClosed {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} {Eq : EquilibriumSolutionPackage P D B} (L : LinearizationPackage Eq) : Prop :=
  L.spectrumAnalysis ∧ L.stabilityCriterion

structure LinearizationEvidence {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} {Eq : EquilibriumSolutionPackage P D B} (L : LinearizationPackage Eq) where
  spectrumAnalysisClosed : L.spectrumAnalysis
  stabilityCriterionClosed : L.stabilityCriterion

theorem linearization_closed_from_evidence {P : PhaseSpacePackage} {D : DelayOperatorPackage P} {B : BifurcationParameterPackage} {Eq : EquilibriumSolutionPackage P D B} (L : LinearizationPackage Eq) (E : LinearizationEvidence L) : LinearizationClosed L := by
  exact And.intro E.spectrumAnalysisClosed E.stabilityCriterionClosed

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse