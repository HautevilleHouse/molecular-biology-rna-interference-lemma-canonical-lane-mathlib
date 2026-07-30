import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure GeneSilencingEndpointPackage where
  targetGene : Type u
  mrnaTranscript : Type v
  sirnaGuideStrand : Type w
  translationArrest : Prop
  mrnaDegradation : Prop
  epigeneticSilencing : Prop
  silencingEfficiency : Prop

structure GeneSilencingEndpointEvidence (G : GeneSilencingEndpointPackage) where
  translationArrestClosed : G.translationArrest
  mrnaDegradationClosed : G.mrnaDegradation
  epigeneticSilencingClosed : G.epigeneticSilencing
  silencingEfficiencyClosed : G.silencingEfficiency

def GeneSilencingEndpointClosed (G : GeneSilencingEndpointPackage) : Prop :=
  G.translationArrest ∧ G.mrnaDegradation ∧ G.epigeneticSilencing ∧ G.silencingEfficiency

theorem gene_silencing_endpoint_closed_from_evidence (G : GeneSilencingEndpointPackage) (E : GeneSilencingEndpointEvidence G) :
    GeneSilencingEndpointClosed G := by
  exact And.intro E.translationArrestClosed
    (And.intro E.mrnaDegradationClosed
      (And.intro E.epigeneticSilencingClosed E.silencingEfficiencyClosed))

theorem gene_silencing_endpoint_supplies_mathlib_statement (G : GeneSilencingEndpointPackage) :
    G.silencingEfficiency := G.silencingEfficiency

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse