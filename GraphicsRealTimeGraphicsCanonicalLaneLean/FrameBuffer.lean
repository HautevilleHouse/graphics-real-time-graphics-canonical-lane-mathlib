import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure FrameBufferPackage where
  colorAttachment : Prop
  depthStencilAttachment : Prop
  resolveAttachment : Prop
  multiSampling : Prop

def FrameBufferClosed (F : FrameBufferPackage) : Prop :=
  F.colorAttachment ∧ F.depthStencilAttachment ∧ F.resolveAttachment ∧ F.multiSampling

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
