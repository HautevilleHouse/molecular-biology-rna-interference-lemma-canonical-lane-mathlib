import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferenceAdmittedObject where
  cellLine : String
  sirnaSequence : String
  targetGene : String
  knockdownEfficiency : Float
  conclusion : knockdownEfficiency > 0.0

def RnaInterferenceWitnessClosed (O : RnaInterferenceAdmittedObject) : Prop :=
  O.knockdownEfficiency > 0.0

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse