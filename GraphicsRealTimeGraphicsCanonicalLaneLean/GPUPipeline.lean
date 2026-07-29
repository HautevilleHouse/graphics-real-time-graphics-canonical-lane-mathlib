import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure GPUPipelinePackage where
  commandBuffer : Prop
  resourceBinding : Prop
  synchronization : Prop
  memoryBarrier : Prop

def GPUPipelineClosed (G : GPUPipelinePackage) : Prop :=
  G.commandBuffer ∧ G.resourceBinding ∧ G.synchronization ∧ G.memoryBarrier

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
