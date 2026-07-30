import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure RnaInterferenceStep where
  stepName : String
  rateConstant : Float
  reactants : List String
  products : List String
  isReversible : Bool

def stepRatePositive (s : RnaInterferenceStep) : Prop :=
  s.rateConstant > 0

structure RnaInterferencePathway where
  steps : List RnaInterferenceStep
  initialRnaConcentration : Float
  dicerActivity : Float
  riscComplexFormation : Prop
  mrnaCleavage : Bool

def pathwayValid (p : RnaInterferencePathway) : Prop :=
  p.initialRnaConcentration ≥ 0 ∧ p.dicerActivity > 0 ∧ (∀ s ∈ p.steps, stepRatePositive s)

structure RnaInterferenceKineticsPackage where
  pathway : RnaInterferencePathway
  kineticEquations : List String
  steadyStateExists : Prop
  sensitivityAnalysis : Prop

def KineticsPackageClosed (K : RnaInterferenceKineticsPackage) : Prop :=
  pathwayValid K.pathway ∧ K.steadyStateExists

theorem kinetics_package_closed (K : RnaInterferenceKineticsPackage) (h : pathwayValid K.pathway) (h2 : K.steadyStateExists) : KineticsPackageClosed K :=
  And.intro h h2

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse