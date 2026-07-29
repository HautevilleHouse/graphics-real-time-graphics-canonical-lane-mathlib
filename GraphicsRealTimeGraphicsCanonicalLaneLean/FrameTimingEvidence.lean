import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure FrameTimingPackage where
  frameInterval : Type
  gpuTime : Type
  cpuTime : Type
  frameRate : Nat
  frameBudget : FrameTimingPackage.frameInterval → Prop
  gpuTimeWithinBudget : FrameTimingPackage.gpuTime → Prop
  cpuTimeWithinBudget : FrameTimingPackage.cpuTime → Prop
  frameRateSustained : Prop

structure FrameTimingEvidence (F : FrameTimingPackage) where
  frameBudgetClosed : F.frameBudget F.frameInterval
  gpuTimeWithinBudgetClosed : F.gpuTimeWithinBudget F.gpuTime
  cpuTimeWithinBudgetClosed : F.cpuTimeWithinBudget F.cpuTime
  frameRateSustainedClosed : F.frameRateSustained

def FrameTimingClosed (F : FrameTimingPackage) : Prop :=
  F.frameBudget F.frameInterval ∧
  F.gpuTimeWithinBudget F.gpuTime ∧
  F.cpuTimeWithinBudget F.cpuTime ∧
  F.frameRateSustained

theorem frame_timing_closed_from_evidence (F : FrameTimingPackage)
    (E : FrameTimingEvidence F) : FrameTimingClosed F := by
  exact And.intro E.frameBudgetClosed
    (And.intro E.gpuTimeWithinBudgetClosed
      (And.intro E.cpuTimeWithinBudgetClosed E.frameRateSustainedClosed))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
