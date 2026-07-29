import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FermatLastTheoremCanonicalLaneLean.ModularDeformation

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure WilesModularityPackage (M : ModularDeformationPackage) where
  deformationRing : M.deformationRing
  universalCharacter : M.universalCharacter
  heckeAction : Prop
  minimalLevel : Prop
  isomorphismWithHecke : Prop

structure WilesModularityEvidence {M : ModularDeformationPackage}
    (W : WilesModularityPackage M) where
  heckeActionClosed : W.heckeAction
  minimalLevelClosed : W.minimalLevel
  isomorphismWithHeckeClosed : W.isomorphismWithHecke

def WilesModularityClosed {M : ModularDeformationPackage} (W : WilesModularityPackage M) : Prop :=
  W.heckeAction ∧ W.minimalLevel ∧ W.isomorphismWithHecke

theorem wiles_modularity_closed_from_evidence {M : ModularDeformationPackage}
    (W : WilesModularityPackage M) (E : WilesModularityEvidence W) :
    WilesModularityClosed W := by
  exact And.intro E.heckeActionClosed (And.intro E.minimalLevelClosed E.isomorphismWithHeckeClosed)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse