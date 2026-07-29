import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure ComputeShaderPackage where
  shaderProgram : Type
  threadGroupSize : Prop
  sharedMemory : Prop
  synchronizationBarrier : Prop
  dispatchCall : Prop
  bufferBinding : Prop

structure ComputeShaderEvidence (C : ComputeShaderPackage) where
  shaderProgramClosed : C.shaderProgram
  threadGroupSizeClosed : C.threadGroupSize
  sharedMemoryClosed : C.sharedMemory
  synchronizationBarrierClosed : C.synchronizationBarrier
  dispatchCallClosed : C.dispatchCall
  bufferBindingClosed : C.bufferBinding

def ComputeShaderClosed (C : ComputeShaderPackage) : Prop :=
  C.shaderProgram ∧ C.threadGroupSize ∧ C.sharedMemory ∧ C.synchronizationBarrier ∧ C.dispatchCall ∧ C.bufferBinding

theorem compute_shader_closed_from_evidence (C : ComputeShaderPackage) (E : ComputeShaderEvidence C) : ComputeShaderClosed C := by
  exact And.intro E.shaderProgramClosed (And.intro E.threadGroupSizeClosed (And.intro E.sharedMemoryClosed (And.intro E.synchronizationBarrierClosed (And.intro E.dispatchCallClosed E.bufferBindingClosed))))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse