import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean.ScreeningComplexPackage
import HautevilleHouse.MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean.DicerProcessingPackage
import HautevilleHouse.MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean.AmplificationLoopPackage
import HautevilleHouse.MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean.GeneSilencingEndpointPackage

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferenceAnalyticFoundation where
  screeningComplex : ScreeningComplexPackage
  screeningEvidence : ScreeningComplexEvidence screeningComplex
  dicerProcessing : DicerProcessingPackage
  dicerEvidence : DicerProcessingEvidence dicerProcessing
  amplificationLoop : AmplificationLoopPackage
  amplificationEvidence : AmplificationLoopEvidence amplificationLoop
  geneSilencingEndpoint : GeneSilencingEndpointPackage
  endpointEvidence : GeneSilencingEndpointEvidence geneSilencingEndpoint

def RnaInterferenceAnalyticFoundationClosed (A : RnaInterferenceAnalyticFoundation) : Prop :=
  ScreeningComplexClosed A.screeningComplex ∧
  DicerProcessingClosed A.dicerProcessing ∧
  AmplificationLoopClosed A.amplificationLoop ∧
  GeneSilencingEndpointClosed A.geneSilencingEndpoint

theorem rna_interference_foundation_closed_from_evidence
    (A : RnaInterferenceAnalyticFoundation) :
    RnaInterferenceAnalyticFoundationClosed A := by
  exact And.intro (screening_complex_closed_from_evidence A.screeningComplex A.screeningEvidence)
    (And.intro (dicer_processing_closed_from_evidence A.dicerProcessing A.dicerEvidence)
      (And.intro (amplification_loop_closed_from_evidence A.amplificationLoop A.amplificationEvidence)
        (gene_silencing_endpoint_closed_from_evidence A.geneSilencingEndpoint A.endpointEvidence)))

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse