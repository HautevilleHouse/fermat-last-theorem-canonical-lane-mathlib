import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure ModularityLiftingPackage {G : GaloisRepresentationPackage} where
  liftExists : Prop
  niveauAdjoint : Prop
  localGlobalCompatibility : Prop

structure ModularityLiftingEvidence {G : GaloisRepresentationPackage}
    (M : ModularityLiftingPackage G) where
  liftExistsClosed : M.liftExists
  niveauAdjointClosed : M.niveauAdjoint
  localGlobalCompatibilityClosed : M.localGlobalCompatibility

def ModularityLiftingClosed {G : GaloisRepresentationPackage}
    (M : ModularityLiftingPackage G) : Prop :=
  M.liftExists ∧ M.niveauAdjoint ∧ M.localGlobalCompatibility

theorem modularity_lifting_closed_from_evidence {G : GaloisRepresentationPackage}
    (M : ModularityLiftingPackage G) (E : ModularityLiftingEvidence M) :
    ModularityLiftingClosed M := by
  exact And.intro E.liftExistsClosed
    (And.intro E.niveauAdjointClosed E.localGlobalCompatibilityClosed)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse