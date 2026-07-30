import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure SiRNAPathway where
  dsRNARecognition : Prop
  endonucleaseCleavage : Prop
  siRnaDuplexFormation : Prop
  riscAssembly : Prop
  mrnaDegradation : Prop

def SiRNAPathwayClosed (S : SiRNAPathway) : Prop :=
  S.dsRNARecognition ∧ S.endonucleaseCleavage ∧ S.siRnaDuplexFormation ∧ S.riscAssembly ∧ S.mrnaDegradation

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse