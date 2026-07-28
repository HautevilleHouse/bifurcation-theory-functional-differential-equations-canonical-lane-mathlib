import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure DelayOperatorPackage (P : PhaseSpacePackage) where
  delayFunction : P.manifoldType → ℝ → P.manifoldType
  delaySmoothness : Prop
  compactSupport : Prop
  boundedNorm : Prop

def DelayOperatorClosed {P : PhaseSpacePackage} (D : DelayOperatorPackage P) : Prop :=
  D.delaySmoothness ∧ D.compactSupport ∧ D.boundedNorm

structure DelayOperatorEvidence {P : PhaseSpacePackage} (D : DelayOperatorPackage P) where
  delaySmoothnessClosed : D.delaySmoothness
  compactSupportClosed : D.compactSupport
  boundedNormClosed : D.boundedNorm

theorem delay_operator_closed_from_evidence {P : PhaseSpacePackage} (D : DelayOperatorPackage P) (E : DelayOperatorEvidence D) : DelayOperatorClosed D := by
  exact And.intro E.delaySmoothnessClosed (And.intro E.compactSupportClosed E.boundedNormClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse