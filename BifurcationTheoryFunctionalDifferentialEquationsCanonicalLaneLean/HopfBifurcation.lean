import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure HopfBifurcationPackage where
  stateSpace : Type u
  delaySpace : Type v
  parameterSpace : Type w
  equilibrium : stateSpace
  criticalParameterValue : parameterSpace
  transversalityCondition : Prop
  nondegeneracyCondition : Prop
  periodicOrbitExistence : Prop

structure HopfBifurcationEvidence (H : HopfBifurcationPackage) where
  transversalityConditionClosed : H.transversalityCondition
  nondegeneracyConditionClosed : H.nondegeneracyCondition
  periodicOrbitExistenceClosed : H.periodicOrbitExistence

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.transversalityCondition ∧ H.nondegeneracyCondition ∧ H.periodicOrbitExistence

theorem hopf_bifurcation_closed_from_evidence (H : HopfBifurcationPackage)
    (E : HopfBifurcationEvidence H) : HopfBifurcationClosed H := by
  exact And.intro E.transversalityConditionClosed
    (And.intro E.nondegeneracyConditionClosed E.periodicOrbitExistenceClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse