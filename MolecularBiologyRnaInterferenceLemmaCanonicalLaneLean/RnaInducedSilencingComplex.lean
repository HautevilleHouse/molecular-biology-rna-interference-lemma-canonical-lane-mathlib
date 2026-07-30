import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInducedSilencingComplexPackage where
  argonauteLoading : Prop
  guideRnaBinding : Prop
  targetRecognition : Prop
  slicerActivity : Prop
  turnover : Prop

structure RnaInducedSilencingComplexEvidence (R : RnaInducedSilencingComplexPackage) where
  argonauteLoadingClosed : R.argonauteLoading
  guideRnaBindingClosed : R.guideRnaBinding
  targetRecognitionClosed : R.targetRecognition
  slicerActivityClosed : R.slicerActivity
  turnoverClosed : R.turnover

def RnaInducedSilencingComplexClosed (R : RnaInducedSilencingComplexPackage) : Prop :=
  R.argonauteLoading ∧ R.guideRnaBinding ∧ R.targetRecognition ∧ R.slicerActivity ∧ R.turnover

theorem rna_induced_silencing_complex_closed_from_evidence (R : RnaInducedSilencingComplexPackage) (E : RnaInducedSilencingComplexEvidence R) : RnaInducedSilencingComplexClosed R := by
  exact And.intro E.argonauteLoadingClosed (And.intro E.guideRnaBindingClosed (And.intro E.targetRecognitionClosed (And.intro E.slicerActivityClosed E.turnoverClosed)))

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse