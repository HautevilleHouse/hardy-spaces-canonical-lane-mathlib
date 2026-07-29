import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.HardySpaceDefinitions

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure InnerOuterFactorization (H : HardySpace 2 (fun z => z)) where
  innerFactor : ℂ → ℂ
  outerFactor : ℂ → ℂ
  factorization : H.boundaryFunction = innerFactor * outerFactor
  innerBound : |innerFactor| ≤ 1
  outerNonZero : outerFactor ≠ 0
  factorizationWitness : factorization

def InnerOuterFactorizationClosed (H : HardySpace 2 (fun z => z)) (F : InnerOuterFactorization H) : Prop :=
  F.factorization ∧ F.innerBound ∧ F.outerNonZero

theorem inner_outer_factorization_closed (H : HardySpace 2 (fun z => z)) (F : InnerOuterFactorization H) : InnerOuterFactorizationClosed H F := by
  exact And.intro F.factorizationWitness (And.intro F.innerBound F.outerNonZero)

end HardySpacesCanonicalLaneLean
end HautevilleHouse
