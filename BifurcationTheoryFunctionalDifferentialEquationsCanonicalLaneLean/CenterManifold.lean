import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure CenterManifoldReductionPackage where
  stateSpace : Type u
  delaySpace : Type v
  linearization : Type w
  spectralDecomposition : Prop
  centerManifoldExistence : Prop
  reductionValid : Prop

structure CenterManifoldEvidence (C : CenterManifoldReductionPackage) where
  spectralDecompositionClosed : C.spectralDecomposition
  centerManifoldExistenceClosed : C.centerManifoldExistence
  reductionValidClosed : C.reductionValid

def CenterManifoldClosed (C : CenterManifoldReductionPackage) : Prop :=
  C.spectralDecomposition ∧ C.centerManifoldExistence ∧ C.reductionValid

theorem center_manifold_closed_from_evidence (C : CenterManifoldReductionPackage)
    (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.spectralDecompositionClosed
    (And.intro E.centerManifoldExistenceClosed E.reductionValidClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse