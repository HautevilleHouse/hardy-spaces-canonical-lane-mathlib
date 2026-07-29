import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure HardySpace (p : ℝ) (D : ℂ → ℂ) where
  holomorphicOnUnitDisc : Prop
  lpBoundaryValues : Prop
  norm : ℝ
  normFinite : norm < ∞
  boundaryFunction : ℂ → ℂ
  innerFunction : ℂ → ℂ
  outerFunction : ℂ → ℂ
  canonicalFactorization : innerFunction * outerFunction = boundaryFunction

def HardySpaceClosed (H : HardySpace p D) : Prop :=
  H.holomorphicOnUnitDisc ∧ H.lpBoundaryValues ∧ H.normFinite ∧
  (H.boundaryFunction = H.innerFunction * H.outerFunction)

structure HardyAdmittedObject where
  space : HardySpace 2 (fun z => z)
  factorizationWitness : HardySpaceClosed space
  innerFunctionInner : Prop
  outerFunctionOuter : Prop

end HardySpacesCanonicalLaneLean
end HautevilleHouse
