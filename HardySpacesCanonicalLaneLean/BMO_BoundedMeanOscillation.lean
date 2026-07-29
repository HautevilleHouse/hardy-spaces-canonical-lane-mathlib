import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.HardySpaceDefinition

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure BMOPackage {p : ℝ} (H : HardySpacePackage p) where
  bmoFunctions : Type u
  norm : bmoFunctions → ℝ
  embedding : H.analyticFunctions → bmoFunctions
  boundedness : Prop

struct BMOEvidence {p : ℝ} {H : HardySpacePackage p} (B : BMOPackage H) where
  embeddingClosed : B.embedding
  boundednessClosed : B.boundedness

def BMOClosed {p : ℝ} {H : HardySpacePackage p} (B : BMOPackage H) : Prop :=
  B.embedding ∧ B.boundedness

theorem bmo_closed_from_evidence {p : ℝ} {H : HardySpacePackage p} (B : BMOPackage H) (E : BMOEvidence B) :
    BMOClosed B := by
  exact And.intro E.embeddingClosed E.boundednessClosed

end HardySpacesCanonicalLaneLean
end HautevilleHouse