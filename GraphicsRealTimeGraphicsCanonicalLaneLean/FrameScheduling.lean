import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure FrameSchedulingPackage where
  timeBudget : Prop
  workloadBalance : Prop
  gpuTaskPrioritization : Prop
  resourceAllocation : Prop
  frameTimingControl : Prop

structure FrameSchedulingEvidence (F : FrameSchedulingPackage) where
  timeBudgetClosed : F.timeBudget
  workloadBalanceClosed : F.workloadBalance
  gpuTaskPrioritizationClosed : F.gpuTaskPrioritization
  resourceAllocationClosed : F.resourceAllocation
  frameTimingControlClosed : F.frameTimingControl

def FrameSchedulingClosed (F : FrameSchedulingPackage) : Prop :=
  F.timeBudget ∧ F.workloadBalance ∧ F.gpuTaskPrioritization ∧ F.resourceAllocation ∧ F.frameTimingControl

theorem frame_scheduling_closed_from_evidence (F : FrameSchedulingPackage) (E : FrameSchedulingEvidence F) : FrameSchedulingClosed F := by
  exact And.intro E.timeBudgetClosed (And.intro E.workloadBalanceClosed (And.intro E.gpuTaskPrioritizationClosed (And.intro E.resourceAllocationClosed E.frameTimingControlClosed)))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse