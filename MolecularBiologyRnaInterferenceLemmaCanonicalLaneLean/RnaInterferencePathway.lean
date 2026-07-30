import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferencePathwayPackage where
  dicerEnzyme : Type u
  riscComplex : Type v
  sirnaDuplex : Type w
  targetMrna : Type x
  transcriptCleavage : Prop
  translationalRepression : Prop
  pathwayActivated : Prop

structure RnaInterferencePathwayEvidence (R : RnaInterferencePathwayPackage) where
  dicerProcessesSirna : Prop
  riscLoading : Prop
  targetRecognition : Prop
  cleavageOrRepression : R.transcriptCleavage ∨ R.translationalRepression

def RnaInterferencePathwayClosed (R : RnaInterferencePathwayPackage) : Prop :=
  R.pathwayActivated

theorem rna_interference_pathway_closed_from_evidence
    (R : RnaInterferencePathwayPackage) (E : RnaInterferencePathwayEvidence R) :
    RnaInterferencePathwayClosed R := by
  exact E.cleavageOrRepression.elim
    (fun h => h)
    (fun h => h)

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse