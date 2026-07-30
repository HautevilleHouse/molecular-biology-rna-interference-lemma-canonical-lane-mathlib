import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RdRPAmplification where
  templateBinding : Prop
  primerIndependentSynthesis : Prop
  doubleStrandedProduct : Prop
  secondarySiRNAGeneration : Prop
  silencingReinforcement : Prop

def RdRPAmplificationClosed (R : RdRPAmplification) : Prop :=
  R.templateBinding ∧ R.primerIndependentSynthesis ∧ R.doubleStrandedProduct ∧ R.secondarySiRNAGeneration ∧ R.silencingReinforcement

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse