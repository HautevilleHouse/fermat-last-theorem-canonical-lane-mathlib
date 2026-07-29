import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure GaloisRepresentationsPackage where
  field : Type
  characteristic : Nat
  absoluteGaloisGroup : Type
  representation : Prop
  irreducible : Prop
  ramificationSet : Set Nat
  modularityLift : Prop

structure GaloisRepresentationsEvidence (G : GaloisRepresentationsPackage) where
  fieldDefined : Nonempty G.field
  characteristicPrime : G.characteristic = 0 ∨ Nat.Prime G.characteristic
  absoluteGaloisGroupDefined : Nonempty G.absoluteGaloisGroup
  representationClosed : G.representation
  irreducibleClosed : G.irreducible
  ramificationSetFinite : Set.Finite G.ramificationSet
  modularityLiftClosed : G.modularityLift

def GaloisRepresentationsClosed (G : GaloisRepresentationsPackage) : Prop :=
  Nonempty G.field ∧ (G.characteristic = 0 ∨ Nat.Prime G.characteristic) ∧
  Nonempty G.absoluteGaloisGroup ∧ G.representation ∧ G.irreducible ∧
  Set.Finite G.ramificationSet ∧ G.modularityLift

theorem galois_representations_closed_from_evidence (G : GaloisRepresentationsPackage)
    (E : GaloisRepresentationsEvidence G) : GaloisRepresentationsClosed G := by
  exact And.intro E.fieldDefined
    (And.intro E.characteristicPrime
      (And.intro E.absoluteGaloisGroupDefined
        (And.intro E.representationClosed
          (And.intro E.irreducibleClosed
            (And.intro E.ramificationSetFinite E.modularityLiftClosed)))))

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse