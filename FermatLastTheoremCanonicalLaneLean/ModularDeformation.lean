import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure ModularDeformationPackage where
  modularForm : Type u
  heckeOperator : Type v
  eigenCurve : Type w
  deformationRing : Prop
  universalCharacter : Prop
  compatibility : Prop

structure ModularDeformationEvidence (P : ModularDeformationPackage) where
  deformationRingClosed : P.deformationRing
  universalCharacterClosed : P.universalCharacter
  compatibilityClosed : P.compatibility

def ModularDeformationClosed (P : ModularDeformationPackage) : Prop :=
  P.deformationRing ∧ P.universalCharacter ∧ P.compatibility

theorem modular_deformation_closed_from_evidence (P : ModularDeformationPackage)
    (E : ModularDeformationEvidence P) : ModularDeformationClosed P := by
  exact And.intro E.deformationRingClosed (And.intro E.universalCharacterClosed E.compatibilityClosed)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse