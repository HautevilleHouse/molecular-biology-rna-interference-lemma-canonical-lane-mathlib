import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : RnaInterferenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RnaInterferenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse