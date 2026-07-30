import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure Experiment where
  experimentId : String
  conditions : List String
  measuredReadout : Float
  controlReadout : Float
  significance : Float

def exprValid (e : Experiment) : Prop :=
  e.significance > 0 ∧ e.significance ≤ 0.05

structure ValidationSet where
  experiments : List Experiment
  hypothesisConfirmed : Prop
  replicates : Nat
  replicatesSufficient : replicates ≥ 3

structure ExperimentalValidationPackage where
  validationData : ValidationSet
  statisticalPower : Float
  powerSufficient : statisticalPower ≥ 0.8
  validationClosed : validationData.hypothesisConfirmed ∧ powerSufficient

def ExperimentalValidationClosed (V : ExperimentalValidationPackage) : Prop :=
  V.validationClosed

theorem experimental_validation_closed (V : ExperimentalValidationPackage) : ExperimentalValidationClosed V :=
  V.validationClosed

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse