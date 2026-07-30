import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure ScreeningComplexPackage where
  transcriptTarget : Type u
  sirnaDuplex : Type v
  riscLoading : Type w
  targetRecognition : Prop
  cleavageEfficiency : Prop
  offTargetPotential : Prop

structure ScreeningComplexEvidence (S : ScreeningComplexPackage) where
  targetRecognitionClosed : S.targetRecognition
  cleavageEfficiencyClosed : S.cleavageEfficiency
  offTargetPotentialClosed : S.offTargetPotential

def ScreeningComplexClosed (S : ScreeningComplexPackage) : Prop :=
  S.targetRecognition ∧ S.cleavageEfficiency ∧ S.offTargetPotential

theorem screening_complex_closed_from_evidence (S : ScreeningComplexPackage) (E : ScreeningComplexEvidence S) :
    ScreeningComplexClosed S := by
  exact And.intro E.targetRecognitionClosed
    (And.intro E.cleavageEfficiencyClosed E.offTargetPotentialClosed)

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse