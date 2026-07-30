import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean

structure DiffeomEquation where
  variableNames : List String
  rateEquations : List (String × String)
  initialConditions : List (String × Float)
  solutionsExists : Prop
  uniqueness : Prop

def DiffeomEquationValid (D : DiffeomEquation) : Prop :=
  D.solutionsExists ∧ D.uniqueness

structure DiffeomModelPackage where
  equations : List DiffeomEquation
  couplingMatrix : List (List Float)
  couplingValid : couplingMatrix ≠ []

def DiffeomModelPackageClosed (D : DiffeomModelPackage) : Prop :=
  ∀ eq ∈ D.equations, DiffeomEquationValid eq

theorem diffeom_model_package_valid (D : DiffeomModelPackage) (h : ∀ eq ∈ D.equations, DiffeomEquationValid eq) : DiffeomModelPackageClosed D :=
  h

end MolecularBiologyRnaInterferenceLemmaCanonicalLaneLean
end HautevilleHouse