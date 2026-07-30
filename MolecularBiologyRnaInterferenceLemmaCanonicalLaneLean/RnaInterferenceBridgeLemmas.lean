import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean.RnaInterferencePathway

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaInterferencePathwayClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- This would require evidence from the pathway
  sorry

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse