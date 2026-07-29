import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure ModularFormsPackage where
  weight : Nat
  level : Nat
  heckeOperators : Prop
  eigenformCondition : Prop
  qExpansion : Prop
  galoisRepresentationAttached : Prop

structure ModularFormsEvidence (M : ModularFormsPackage) where
  weightDefined : M.weight = 2
  levelDefined : M.level = 2
  heckeOperatorsClosed : M.heckeOperators
  eigenformConditionClosed : M.eigenformCondition
  qExpansionClosed : M.qExpansion
  galoisRepresentationAttachedClosed : M.galoisRepresentationAttached

def ModularFormsClosed (M : ModularFormsPackage) : Prop :=
  M.weight = 2 ∧ M.level = 2 ∧ M.heckeOperators ∧ M.eigenformCondition ∧
  M.qExpansion ∧ M.galoisRepresentationAttached

theorem modular_forms_closed_from_evidence (M : ModularFormsPackage)
    (E : ModularFormsEvidence M) : ModularFormsClosed M := by
  exact And.intro E.weightDefined
    (And.intro E.levelDefined
      (And.intro E.heckeOperatorsClosed
        (And.intro E.eigenformConditionClosed
          (And.intro E.qExpansionClosed E.galoisRepresentationAttachedClosed))))

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse