import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure Strategy where
  name : String
  payoffMatrix : List (List Float)
  replicatorDynamics : String

def strategyWellDefined (s : Strategy) : Prop :=
  s.payoffMatrix ≠ [] ∧ (∀ row ∈ s.payoffMatrix, row ≠ [])

structure PopulationState where
  frequencies : List Float
  total : Float
  sumOne : List.sum frequencies = 1

def stateValid (p : PopulationState) : Prop :=
  (∀ f ∈ p.frequencies, f ≥ 0) ∧ p.sumOne

structure EvolutionaryGamePackage where
  strategies : List Strategy
  initialPopulation : PopulationState
  evolutionStep : PopulationState → PopulationState → Prop
  fixedPointExists : Prop
  fixedPointEvidence : fixedPointExists

def EvolutionaryGameClosed (E : EvolutionaryGamePackage) : Prop :=
  (∀ s ∈ E.strategies, strategyWellDefined s) ∧ stateValid E.initialPopulation ∧ E.fixedPointExists

theorem evolutionary_game_closed (E : EvolutionaryGamePackage) (hstrat : ∀ s ∈ E.strategies, strategyWellDefined s) (hpop : stateValid E.initialPopulation) (hfp : E.fixedPointExists) : EvolutionaryGameClosed E :=
  And.intro hstrat (And.intro hpop hfp)

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse