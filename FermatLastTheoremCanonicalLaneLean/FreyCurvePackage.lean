import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure FreyCurvePackage where
  baseField : Type u
  conductor : ℕ
  semistableRamon : Prop
  galoisRepresentationAttached : GaloisRepresentationPackage
  discriminantMinimal : Prop

structure FreyCurveEvidence (F : FreyCurvePackage) where
  semistableRamonClosed : F.semistableRamon
  discriminantMinimalClosed : F.discriminantMinimal
  galoisAttachedClosed : GaloisRepresentationClosed F.galoisRepresentationAttached

def FreyCurveClosed (F : FreyCurvePackage) : Prop :=
  F.semistableRamon ∧ F.discriminantMinimal ∧
  GaloisRepresentationClosed F.galoisRepresentationAttached

theorem frey_curve_closed_from_evidence (F : FreyCurvePackage)
    (E : FreyCurveEvidence F) : FreyCurveClosed F := by
  exact And.intro E.semistableRamonClosed
    (And.intro E.discriminantMinimalClosed E.galoisAttachedClosed)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse