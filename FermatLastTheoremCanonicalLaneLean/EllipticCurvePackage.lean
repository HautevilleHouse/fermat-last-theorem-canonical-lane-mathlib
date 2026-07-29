import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure EllipticCurvePackage where
  field : Type u
  fieldChar : Prop
  aInvariant : Type v
  bInvariant : Type w
  discriminantNonzero : Prop

structure EllipticCurveEvidence (E : EllipticCurvePackage) where
  fieldCharClosed : E.fieldChar
  discriminantNonzeroClosed : E.discriminantNonzero

def EllipticCurveClosed (E : EllipticCurvePackage) : Prop :=
  E.fieldChar ∧ E.discriminantNonzero

theorem elliptic_curve_closed_from_evidence (E : EllipticCurvePackage) (Ev : EllipticCurveEvidence E) :
  EllipticCurveClosed E := by
  exact And.intro Ev.fieldCharClosed Ev.discriminantNonzeroClosed

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse