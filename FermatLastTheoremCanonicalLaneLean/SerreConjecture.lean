import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure SerreConjecturePackage where
  level : ℕ
  weight : ℕ
  character : Type u
  modularForm : Type v
  congruence : Prop
  modularLift : Prop

structure SerreConjectureEvidence (S : SerreConjecturePackage) where
  congruenceClosed : S.congruence
  modularLiftClosed : S.modularLift

def SerreConjectureClosed (S : SerreConjecturePackage) : Prop :=
  S.congruence ∧ S.modularLift

theorem serre_conjecture_closed_from_evidence (S : SerreConjecturePackage)
    (E : SerreConjectureEvidence S) : SerreConjectureClosed S := by
  exact And.intro E.congruenceClosed E.modularLiftClosed

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse