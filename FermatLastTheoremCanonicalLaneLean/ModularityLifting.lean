import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FermatLastTheoremCanonicalLaneLean.GaloisRepresentation

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure ModularityLifting (n : ℕ) (fe : FermatEquation n) (f : FreyCurve n fe) (g : GaloisRepresentation n fe f) where
  liftingTheorem : Prop
  liftingTheoremTerm : liftingTheorem
  conclusion : ¬ ∃ (a b c : ℤ), a ≠ 0 ∧ b ≠ 0 ∧ c ≠ 0 ∧ a^n + b^n = c^n
  conclusionTerm : conclusion

def ModularityLiftingClosed (M : ModularityLifting n fe f g) : Prop :=
  M.conclusion

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse