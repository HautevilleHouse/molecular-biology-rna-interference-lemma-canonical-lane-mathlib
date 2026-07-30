import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RISCFormation where
  dicerProcessing : Prop
  guideStrandLoading : Prop
  passengerStrandCleavage : Prop
  targetRecognition : Prop
  slicerActivity : Prop

def RISCClosed (R : RISCFormation) : Prop :=
  R.dicerProcessing ∧ R.guideStrandLoading ∧ R.passengerStrandCleavage ∧ R.targetRecognition ∧ R.slicerActivity

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse