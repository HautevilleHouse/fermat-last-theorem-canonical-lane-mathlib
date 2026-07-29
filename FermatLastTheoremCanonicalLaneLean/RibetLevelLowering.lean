import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure RibetLevelLoweringPackage {F : FreyCurvePackage} where
  levelLowered : Prop
  conductorReduced : Prop
  contradictsModularity : Prop

structure RibetLevelLoweringEvidence {F : FreyCurvePackage} (R : RibetLevelLoweringPackage F) where
  levelLoweredClosed : R.levelLowered
  conductorReducedClosed : R.conductorReduced
  contradictsModularityClosed : R.contradictsModularity

def RibetLevelLoweringClosed {F : FreyCurvePackage} (R : RibetLevelLoweringPackage F) : Prop :=
  R.levelLowered ∧ R.conductorReduced ∧ R.contradictsModularity

theorem ribet_level_lowering_closed_from_evidence {F : FreyCurvePackage} (R : RibetLevelLoweringPackage F) (Ev : RibetLevelLoweringEvidence R) :
  RibetLevelLoweringClosed R := by
  exact And.intro Ev.levelLoweredClosed (And.intro Ev.conductorReducedClosed Ev.contradictsModularityClosed)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse