import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure MiRNABiogenesis where
  primaryTranscript: Prop
  droshaProcessing : Prop
  preMirnaExport : Prop
  dicerCleavage : Prop
  guideStrandSelection : Prop

def MiRNABiogenesisClosed (M : MiRNABiogenesis) : Prop :=
  M.primaryTranscript ∧ M.droshaProcessing ∧ M.preMirnaExport ∧ M.dicerCleavage ∧ M.guideStrandSelection

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse