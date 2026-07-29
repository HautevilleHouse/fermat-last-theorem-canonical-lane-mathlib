import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : FermatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FermatWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse
