import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

def gateClosed (A : BifurcationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BifurcationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse