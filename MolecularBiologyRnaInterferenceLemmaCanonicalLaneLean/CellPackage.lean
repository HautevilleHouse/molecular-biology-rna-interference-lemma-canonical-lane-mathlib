import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure CellState where
  cellType : String
  rnaConcentration : Float
  proteinLevel : Float
  fitness : Float

def cellStateValid (c : CellState) : Prop :=
  c.rnaConcentration ≥ 0 ∧ c.proteinLevel ≥ 0 ∧ c.fitness ≥ 0

structure CellPackage where
  initialStates : List CellState
  stateTransition : CellState → CellState → Prop
  validityPreserved : ∀ (c : CellState) (c' : CellState), cellStateValid c → stateTransition c c' → cellStateValid c'

def CellPackageClosed (C : CellPackage) : Prop :=
  C.validityPreserved

theorem cell_package_validity_preserved (C : CellPackage) : CellPackageClosed C :=
  C.validityPreserved

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse