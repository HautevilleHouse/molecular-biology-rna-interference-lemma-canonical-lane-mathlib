import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure DicerProcessingPackage where
  dsrnaSubstrate : Type u
  dicerEnzyme : Type v
  processivityFactor : Prop
  sirnaProductLength : Nat
  cleavageFidelity : Prop
  atpDependence : Prop

structure DicerProcessingEvidence (D : DicerProcessingPackage) where
  processivityFactorClosed : D.processivityFactor
  cleavageFidelityClosed : D.cleavageFidelity
  atpDependenceClosed : D.atpDependence

def DicerProcessingClosed (D : DicerProcessingPackage) : Prop :=
  D.processivityFactor ∧ D.cleavageFidelity ∧ D.atpDependence

theorem dicer_processing_closed_from_evidence (D : DicerProcessingPackage) (E : DicerProcessingEvidence D) :
    DicerProcessingClosed D := by
  exact And.intro E.processivityFactorClosed
    (And.intro E.cleavageFidelityClosed E.atpDependenceClosed)

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse