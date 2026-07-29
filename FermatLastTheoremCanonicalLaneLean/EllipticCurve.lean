import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure EllipticCurve (K : Type) [Field K] where
  a : K
  b : K
  discriminant : Δ := 4*a^3 + 27*b^2
  nonsingular : discriminant ≠ 0
  point : K × K
  addFormula : K × K → K × K → K × K
  associativity : ∀ p q r : K × K, addFormula (addFormula p q) r = addFormula p (addFormula q r)

structure EllipticCurvePackage where
  curve : EllipticCurve ℚ
  conductor : ℕ
  modularity : Prop
  modularityTerm : modularity

def EllipticCurveClosed (E : EllipticCurvePackage) : Prop :=
  E.modularity

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse