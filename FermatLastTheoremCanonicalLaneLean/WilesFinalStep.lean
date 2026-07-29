import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure WilesFinalStepPackage where
  freyCurveModular : Bool
  ribetApplied : Bool
  modularityLiftingApplied : Bool
  fermatEquationSolution : ℕ × ℕ × ℕ
  minimalLevel : Nat
  contradictionDerived : Prop

structure WilesFinalStepEvidence (W : WilesFinalStepPackage) where
  freyCurveModularClosed : W.freyCurveModular = true
  ribetAppliedClosed : W.ribetApplied = true
  modularityLiftingAppliedClosed : W.modularityLiftingApplied = true
  fermatEquationSolutionNonzero : W.fermatEquationSolution.1 ≠ 0 ∧ W.fermatEquationSolution.2.1 ≠ 0 ∧ W.fermatEquationSolution.2.2 ≠ 0
  minimalLevelComputed : isMinimal W.minimalLevel
  contradictionDerivedClosed : W.contradictionDerived

def WilesFinalStepClosed (W : WilesFinalStepPackage) : Prop :=
  W.freyCurveModular = true ∧ W.ribetApplied = true ∧ W.modularityLiftingApplied = true ∧
  W.fermatEquationSolution.1 ≠ 0 ∧ W.fermatEquationSolution.2.1 ≠ 0 ∧ W.fermatEquationSolution.2.2 ≠ 0 ∧
  isMinimal W.minimalLevel ∧ W.contradictionDerived

theorem wiles_final_step_closed_from_evidence (W : WilesFinalStepPackage)
    (E : WilesFinalStepEvidence W) : WilesFinalStepClosed W := by
  exact And.intro E.freyCurveModularClosed
    (And.intro E.ribetAppliedClosed
      (And.intro E.modularityLiftingAppliedClosed
        (And.intro E.fermatEquationSolutionNonzero
          (And.intro E.minimalLevelComputed E.contradictionDerivedClosed))))

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse