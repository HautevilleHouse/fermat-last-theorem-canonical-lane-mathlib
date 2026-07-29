import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure GaloisRepresentationPackage where
  field : Type u
  prime : ℕ
  representation : Type v
  irreducible : Prop
  ramifiedAtPrimes : Prop
  modularityCompatibility : Prop

structure GaloisRepresentationEvidence (G : GaloisRepresentationPackage) where
  irreducibleClosed : G.irreducible
  ramifiedAtPrimesClosed : G.ramifiedAtPrimes
  modularityCompatibilityClosed : G.modularityCompatibility

def GaloisRepresentationClosed (G : GaloisRepresentationPackage) : Prop :=
  G.irreducible ∧ G.ramifiedAtPrimes ∧ G.modularityCompatibility

theorem galois_representation_closed_from_evidence (G : GaloisRepresentationPackage)
    (E : GaloisRepresentationEvidence G) : GaloisRepresentationClosed G := by
  exact And.intro E.irreducibleClosed
    (And.intro E.ramifiedAtPrimesClosed E.modularityCompatibilityClosed)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse