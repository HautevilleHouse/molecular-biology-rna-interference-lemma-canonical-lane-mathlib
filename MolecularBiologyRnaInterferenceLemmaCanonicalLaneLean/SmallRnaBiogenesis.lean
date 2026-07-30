import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure SmallRnaBiogenesisPackage where
  primaryTranscript : Prop
  microprocessor : Prop
  exportin5 : Prop
  dicerProcessing : Prop
  strandSelection : Prop

structure SmallRnaBiogenesisEvidence (B : SmallRnaBiogenesisPackage) where
  primaryTranscriptClosed : B.primaryTranscript
  microprocessorClosed : B.microprocessor
  exportin5Closed : B.exportin5
  dicerProcessingClosed : B.dicerProcessing
  strandSelectionClosed : B.strandSelection

def SmallRnaBiogenesisClosed (B : SmallRnaBiogenesisPackage) : Prop :=
  B.primaryTranscript ∧ B.microprocessor ∧ B.exportin5 ∧ B.dicerProcessing ∧ B.strandSelection

theorem small_rna_biogenesis_closed_from_evidence (B : SmallRnaBiogenesisPackage) (E : SmallRnaBiogenesisEvidence B) : SmallRnaBiogenesisClosed B := by
  exact And.intro E.primaryTranscriptClosed (And.intro E.microprocessorClosed (And.intro E.exportin5Closed (And.intro E.dicerProcessingClosed E.strandSelectionClosed)))

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse