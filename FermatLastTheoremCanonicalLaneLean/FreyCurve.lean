import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FermatLastTheoremCanonicalLaneLean.FermatEquation
import HautevilleHouse.FermatLastTheoremCanonicalLaneLean.EllipticCurve

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure FreyCurve (n : ℕ) (fe : FermatEquation n) where
  curve : EllipticCurve ℚ
  discriminant : ℚ
  conductor : ℕ
  discriminantFormula : discriminant = (fe.b^(2*n) - 4*fe.a^n*fe.c^n) / 16
  conductorFormula : conductor = 2^α * ∏_{p|abc} p  -- symbolic
  semistable : Prop
  semistableTerm : semistable

def FreyCurveClosed (F : FreyCurve n fe) : Prop :=
  F.semistable

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse