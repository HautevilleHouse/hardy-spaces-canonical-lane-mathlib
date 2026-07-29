import HardySpacesCanonicalLaneLean.HardySpaceDefinitions

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure BoundaryTracePackage (H : HardySpacePackage) where
  boundaryEmbedding : Type
  traceMap : Type
  surjectivity : Prop
  boundedness : Prop

structure BoundaryTraceEvidence {H : HardySpacePackage} (B : BoundaryTracePackage H) where
  surjectivityClosed : B.surjectivity
  boundednessClosed : B.boundedness

def BoundaryTraceClosed {H : HardySpacePackage} (B : BoundaryTracePackage H) : Prop :=
  B.surjectivity ∧ B.boundedness

theorem boundary_trace_closed_from_evidence {H : HardySpacePackage} (B : BoundaryTracePackage H) (E : BoundaryTraceEvidence B) :
    BoundaryTraceClosed B := by
  exact And.intro E.surjectivityClosed E.boundednessClosed

end HardySpacesCanonicalLaneLean
end HautevilleHouse