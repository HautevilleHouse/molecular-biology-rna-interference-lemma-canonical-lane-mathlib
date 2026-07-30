import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure AmplificationLoopPackage where
  rdrpActivity : Prop
  secondarySirnaGeneration : Prop
  amplificationFactor : Nat
  rnaDependentRnaPolymerase : Type u
  rdrpRecruitmentSignal : Prop
  feedforwardKinetics : Prop

structure AmplificationLoopEvidence (A : AmplificationLoopPackage) where
  rdrpActivityClosed : A.rdrpActivity
  secondarySirnaGenerationClosed : A.secondarySirnaGeneration
  feedforwardKineticsClosed : A.feedforwardKinetics

def AmplificationLoopClosed (A : AmplificationLoopPackage) : Prop :=
  A.rdrpActivity ∧ A.secondarySirnaGeneration ∧ A.feedforwardKinetics

theorem amplification_loop_closed_from_evidence (A : AmplificationLoopPackage) (E : AmplificationLoopEvidence A) :
    AmplificationLoopClosed A := by
  exact And.intro E.rdrpActivityClosed
    (And.intro E.secondarySirnaGenerationClosed E.feedforwardKineticsClosed)

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse