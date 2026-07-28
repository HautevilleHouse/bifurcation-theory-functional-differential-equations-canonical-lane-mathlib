import canonicalLaneMathlib.AdmissibleClass

/-!
# Bifurcation Core Package
-/

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure BifurcationCorePackage where
  phaseSpace : Type u
  parameterSpace : Type v
  vectorField : Type w
  equilibriumSet : Prop
  linearizationWellDefined : Prop
  spectralProperties : Prop

structure BifurcationCoreEvidence (B : BifurcationCorePackage) where
  equilibriumSetClosed : B.equilibriumSet
  linearizationWellDefinedClosed : B.linearizationWellDefined
  spectralPropertiesClosed : B.spectralProperties

def BifurcationCoreClosed (B : BifurcationCorePackage) : Prop :=
  B.equilibriumSet ∧ B.linearizationWellDefined ∧ B.spectralProperties

theorem bifurcation_core_closed_from_evidence (B : BifurcationCorePackage) (E : BifurcationCoreEvidence B) :
    BifurcationCoreClosed B :=
  And.intro E.equilibriumSetClosed (And.intro E.linearizationWellDefinedClosed E.spectralPropertiesClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
