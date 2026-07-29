import GraphicsRealTimeGraphicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure ComputeShaderPackage where
  computeShader : Type
  workGroupSize : Nat × Nat × Nat
  sharedMemory : Prop
  barrierSync : Prop

structure ComputeShaderEvidence (C : ComputeShaderPackage) where
  computeShaderLoaded : True
  workGroupConfigured : C.workGroupSize = (256, 1, 1)
  sharedMemoryAllocated : C.sharedMemory
  barrierSynchronized : C.barrierSync

def ComputeShaderClosed (C : ComputeShaderPackage) : Prop :=
  C.workGroupSize = (256, 1, 1) ∧ C.sharedMemory ∧ C.barrierSync

theorem compute_shader_closed_from_evidence (C : ComputeShaderPackage) (E : ComputeShaderEvidence C) : ComputeShaderClosed C := by
  exact And.intro E.workGroupConfigured (And.intro E.sharedMemoryAllocated E.barrierSynchronized)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse