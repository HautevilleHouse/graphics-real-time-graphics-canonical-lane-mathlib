import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure FrameTimingPackage where
  frameStart : Type u
  frameEnd : Type v
  vsyncInterval : Type w
  frameRateStable : Prop
  inputLagMinimized : Prop
  tearFreePresentation : Prop

structure FrameTimingEvidence (F : FrameTimingPackage) where
  frameRateStableClosed : F.frameRateStable
  inputLagMinimizedClosed : F.inputLagMinimized
  tearFreePresentationClosed : F.tearFreePresentation

def FrameTimingClosed (F : FrameTimingPackage) : Prop :=
  F.frameRateStable ∧ F.inputLagMinimized ∧ F.tearFreePresentation

theorem frame_timing_closed_from_evidence (F : FrameTimingPackage)
    (E : FrameTimingEvidence F) : FrameTimingClosed F := by
  exact And.intro E.frameRateStableClosed
    (And.intro E.inputLagMinimizedClosed E.tearFreePresentationClosed)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse