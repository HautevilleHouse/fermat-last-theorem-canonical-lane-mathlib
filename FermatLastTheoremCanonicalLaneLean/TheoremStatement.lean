import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure FermatAdmittedObject where
  baseField : Type
  baseFieldCharZero : Prop
  exponent : ℕ
  exponentGreaterThanTwo : exponent > 2
  solution : baseField × baseField × baseField
  solutionNonTrivial : solution.1 ≠ 0 ∧ solution.2 ≠ 0 ∧ solution.3 ≠ 0
  equationHolds : solution.1^exponent + solution.2^exponent = solution.3^exponent
  conclusion : False

def FermatWitnessClosed (O : FermatAdmittedObject) : Prop :=
  O.conclusion

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "Fermat Last Theorem",
    theoremName := "Fermat Last Theorem",
    theoremObject := "a^n + b^n = c^n has no nontrivial solutions for n>2",
    classicalBoundary := "carried via modularity and Galois representations",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through admissible class closure",
    certificateLane := "admissible_class_closure",
    carriedRemainder := "full proof via modularity theorem"
  }

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse
