import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure FreyCurvePackage where
  exponent : ℕ
  primeExponent : Prop
  freyCurve : EllipticCurvePackage
  discriminantForm : Prop

structure FreyCurveEvidence (F : FreyCurvePackage) where
  primeExponentClosed : F.primeExponent
  discriminantFormClosed : F.discriminantForm

def FreyCurveClosed (F : FreyCurvePackage) : Prop :=
  F.primeExponent ∧ F.discriminantForm

theorem frey_curve_closed_from_evidence (F : FreyCurvePackage) (Ev : FreyCurveEvidence F) :
  FreyCurveClosed F := by
  exact And.intro Ev.primeExponentClosed Ev.discriminantFormClosed

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse