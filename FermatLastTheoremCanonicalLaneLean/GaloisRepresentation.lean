import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FermatLastTheoremCanonicalLaneLean.FreyCurve

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure GaloisRepresentation (n : ℕ) (fe : FermatEquation n) (f : FreyCurve n fe) where
  field : Type
  [field_is_field : Field field]
  rep : field → ℚ̅ → ℚ̅  -- representation, simplified
  irreducible : Prop
  modular : Prop
  irreducibleTerm : irreducible
  modularTerm : modular

def GaloisRepresentationClosed (G : GaloisRepresentation n fe f) : Prop :=
  G.modular

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse