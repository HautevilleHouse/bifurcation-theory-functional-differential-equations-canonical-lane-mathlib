import BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean.HopfBifurcation

/-!
# Bifurcation Classification Package
-/

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure BifurcationClassificationPackage {B : BifurcationCorePackage} {F : FunctionalDifferentialEquationPackage B} {C : CenterManifoldPackage F} {H : HopfBifurcationPackage C} where
  genericTransversality : Prop
  codimensionClassification : Prop
  normalFormUpToEquivalence : Prop

def BifurcationClassificationClosed {B : BifurcationCorePackage} {F : FunctionalDifferentialEquationPackage B} {C : CenterManifoldPackage F} {H : HopfBifurcationPackage C} (Cl : BifurcationClassificationPackage H) : Prop :=
  Cl.genericTransversality ∧ Cl.codimensionClassification ∧ Cl.normalFormUpToEquivalence

structure BifurcationClassificationEvidence {B : BifurcationCorePackage} {F : FunctionalDifferentialEquationPackage B} {C : CenterManifoldPackage F} {H : HopfBifurcationPackage C} (Cl : BifurcationClassificationPackage H) where
  genericTransversalityClosed : Cl.genericTransversality
  codimensionClassificationClosed : Cl.codimensionClassification
  normalFormUpToEquivalenceClosed : Cl.normalFormUpToEquivalence

theorem bifurcation_classification_closed_from_evidence {B : BifurcationCorePackage} {F : FunctionalDifferentialEquationPackage B} {C : CenterManifoldPackage F} {H : HopfBifurcationPackage C} (Cl : BifurcationClassificationPackage H) (E : BifurcationClassificationEvidence Cl) :
    BifurcationClassificationClosed Cl :=
  And.intro E.genericTransversalityClosed (And.intro E.codimensionClassificationClosed E.normalFormUpToEquivalenceClosed)

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
