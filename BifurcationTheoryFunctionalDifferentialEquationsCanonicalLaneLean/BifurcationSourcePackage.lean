import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"

def sourceFiles : List SourceFile :=
  [ { path := "scripts/extract_constants.py", sha256 := "abcdef", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true } ]

def sourceFunctions : List SourceFunctionDecl :=
  [ { file := "scripts/extract_constants.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 10, isAsync := false } ]

end BifurcationTheoryFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse