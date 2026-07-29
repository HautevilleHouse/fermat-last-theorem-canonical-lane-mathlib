import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FermatLastTheoremCanonicalLaneLean.FreyCurve

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure RibetTheorem (n : ℕ) (fe : FermatEquation n) (f : FreyCurve n fe) where
  levelLowering : Prop
  levelLoweringTerm : levelLowering
  modularityConsequence : GaloisRepresentation n fe f

def RibetTheoremClosed (R : RibetTheorem n fe f) : Prop :=
  R.levelLowering

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse