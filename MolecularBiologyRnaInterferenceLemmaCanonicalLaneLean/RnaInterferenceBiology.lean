import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferenceBiologyPackage (R : RnaInterferenceBiochemistryPackage) where
  rnaiInitiated : Prop
  silencingComplexAssembled : Prop
  mrnaDegradation : Prop
  geneExpressionDownregulated : Prop

def RnaInterferenceBiologyClosed {R : RnaInterferenceBiochemistryPackage} (B : RnaInterferenceBiologyPackage R) : Prop :=
  B.rnaiInitiated ∧ B.silencingComplexAssembled ∧ B.mrnaDegradation ∧ B.geneExpressionDownregulated

theorem rna_interference_biology_closed {R : RnaInterferenceBiochemistryPackage} (B : RnaInterferenceBiologyPackage R) : RnaInterferenceBiologyClosed B :=
  And.intro B.rnaiInitiated (And.intro B.silencingComplexAssembled (And.intro B.mrnaDegradation B.geneExpressionDownregulated))

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse