import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferenceRegulationPackage where
  transcriptionalGeneSilencing : Prop
  postTranscriptionalGeneSilencing : Prop
  heterochromatinFormation : Prop
  dnaMethylation : Prop
  feedbackControl : Prop

structure RnaInterferenceRegulationEvidence (R : RnaInterferenceRegulationPackage) where
  transcriptionalGeneSilencingClosed : R.transcriptionalGeneSilencing
  postTranscriptionalGeneSilencingClosed : R.postTranscriptionalGeneSilencing
  heterochromatinFormationClosed : R.heterochromatinFormation
  dnaMethylationClosed : R.dnaMethylation
  feedbackControlClosed : R.feedbackControl

def RnaInterferenceRegulationClosed (R : RnaInterferenceRegulationPackage) : Prop :=
  R.transcriptionalGeneSilencing ∧ R.postTranscriptionalGeneSilencing ∧ R.heterochromatinFormation ∧ R.dnaMethylation ∧ R.feedbackControl

theorem rna_interference_regulation_closed_from_evidence (R : RnaInterferenceRegulationPackage) (E : RnaInterferenceRegulationEvidence R) : RnaInterferenceRegulationClosed R := by
  exact And.intro E.transcriptionalGeneSilencingClosed (And.intro E.postTranscriptionalGeneSilencingClosed (And.intro E.heterochromatinFormationClosed (And.intro E.dnaMethylationClosed E.feedbackControlClosed)))

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse