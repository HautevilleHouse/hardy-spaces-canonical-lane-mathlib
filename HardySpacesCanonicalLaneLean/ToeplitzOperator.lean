import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.HardySpaceDefinition

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure ToeplitzOperatorPackage {p : ℝ} (H : HardySpacePackage p) where
  symbol : Type u
  boundedness : Prop
  fredholmIndex : Prop
  indexFormula : Prop

structure ToeplitzOperatorEvidence {p : ℝ} {H : HardySpacePackage p} (T : ToeplitzOperatorPackage H) where
  boundednessClosed : T.boundedness
  fredholmIndexClosed : T.fredholmIndex
  indexFormulaClosed : T.indexFormula

def ToeplitzOperatorClosed {p : ℝ} {H : HardySpacePackage p} (T : ToeplitzOperatorPackage H) : Prop :=
  T.boundedness ∧ T.fredholmIndex ∧ T.indexFormula

theorem toeplitz_operator_closed_from_evidence {p : ℝ} {H : HardySpacePackage p} (T : ToeplitzOperatorPackage H) (E : ToeplitzOperatorEvidence T) :
    ToeplitzOperatorClosed T := by
  exact And.intro E.boundednessClosed (And.intro E.fredholmIndexClosed E.indexFormulaClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse