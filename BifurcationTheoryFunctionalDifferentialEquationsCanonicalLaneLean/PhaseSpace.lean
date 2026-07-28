import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure PhaseSpacePackage where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  differentiableStructure : Prop
  finiteDimensional : Prop
  delayEmbedding : Prop

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.differentiableStructure ∧ P.finiteDimensional ∧ P.delayEmbedding

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  differentiableStructureClosed : P.differentiableStructure
  finiteDimensionalClosed : P.finiteDimensional
  delayEmbeddingClosed : P.delayEmbedding

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) : PhaseSpaceClosed P := by
  exact And.intro E.differentiableStructureClosed (And.intro E.finiteDimensionalClosed E.delayEmbeddingClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse