import MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaInterferenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse