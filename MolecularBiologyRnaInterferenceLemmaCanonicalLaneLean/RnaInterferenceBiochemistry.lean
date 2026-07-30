import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferenceBiochemistryPackage where
  dicerEnzymePresent : Prop
  riscComplexFormation : Prop
  sirnaDuplexFormation : Prop
  targetMrnaCleavage : Prop

def RnaInterferenceBiochemistryClosed (R : RnaInterferenceBiochemistryPackage) : Prop :=
  R.dicerEnzymePresent ∧ R.riscComplexFormation ∧ R.sirnaDuplexFormation ∧ R.targetMrnaCleavage

theorem rna_interference_biochemistry_closed (R : RnaInterferenceBiochemistryPackage) : RnaInterferenceBiochemistryClosed R :=
  And.intro R.dicerEnzymePresent (And.intro R.riscComplexFormation (And.intro R.sirnaDuplexFormation R.targetMrnaCleavage))

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse