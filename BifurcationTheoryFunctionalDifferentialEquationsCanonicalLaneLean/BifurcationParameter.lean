import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure BifurcationParameterPackage where
  parameterSpace : Type u
  topology : TopologicalSpace parameterSpace
  differentiableStructure : Prop
  bifurcationPoint : parameterSpace

def BifurcationParameterClosed (B : BifurcationParameterPackage) : Prop :=
  B.differentiableStructure

structure BifurcationParameterEvidence (B : BifurcationParameterPackage) where
  differentiableStructureClosed : B.differentiableStructure

theorem bifurcation_parameter_closed_from_evidence (B : BifurcationParameterPackage) (E : BifurcationParameterEvidence B) : BifurcationParameterClosed B := by
  exact E.differentiableStructureClosed

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse