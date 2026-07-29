import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure ModularCurvesPackage where
  modularCurveDefined : Prop
  modularFormDefined : Prop
  weightTwoFormAssociated : Prop
  heckeOperatorAction : Prop

structure ModularCurvesEvidence (M : ModularCurvesPackage) where
  modularCurveDefinedClosed : M.modularCurveDefined
  modularFormDefinedClosed : M.modularFormDefined
  weightTwoFormAssociatedClosed : M.weightTwoFormAssociated
  heckeOperatorActionClosed : M.heckeOperatorAction

def ModularCurvesClosed (M : ModularCurvesPackage) : Prop :=
  M.modularCurveDefined ∧ M.modularFormDefined ∧
  M.weightTwoFormAssociated ∧ M.heckeOperatorAction

theorem modular_curves_closed_from_evidence (M : ModularCurvesPackage)
    (E : ModularCurvesEvidence M) : ModularCurvesClosed M := by
  exact And.intro E.modularCurveDefinedClosed
    (And.intro E.modularFormDefinedClosed
      (And.intro E.weightTwoFormAssociatedClosed E.heckeOperatorActionClosed))

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse