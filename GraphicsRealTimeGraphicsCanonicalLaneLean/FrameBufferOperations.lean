import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure FrameBufferPackage where
  colorBuffer : Type
  depthBuffer : Type
  stencilBuffer : Type
  clearOperation : Prop
  bufferSwap : Prop

structure FrameBufferEvidence (F : FrameBufferPackage) where
  colorBufferClosed : F.colorBuffer
  depthBufferClosed : F.depthBuffer
  stencilBufferClosed : F.stencilBuffer
  clearOperationClosed : F.clearOperation
  bufferSwapClosed : F.bufferSwap

def FrameBufferClosed (F : FrameBufferPackage) : Prop :=
  F.colorBuffer ∧ F.depthBuffer ∧ F.stencilBuffer ∧ F.clearOperation ∧ F.bufferSwap

theorem frame_buffer_closed_from_evidence (F : FrameBufferPackage) (E : FrameBufferEvidence F) : FrameBufferClosed F := by
  exact And.intro E.colorBufferClosed (And.intro E.depthBufferClosed (And.intro E.stencilBufferClosed (And.intro E.clearOperationClosed E.bufferSwapClosed)))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse