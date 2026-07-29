import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure GraphicsAPIPackage where
  apiVersion : String
  deviceCreated : Prop
  commandBuffer : Type
  swapChain : Type
  synchronization : Prop
  resourceBarriers : Prop
  deviceCreatedTerm : deviceCreated
  synchronizationTerm : synchronization
  resourceBarriersTerm : resourceBarriers

structure GraphicsAPIEvidence (G : GraphicsAPIPackage) where
  deviceCreatedClosed : G.deviceCreated
  synchronizationClosed : G.synchronization
  resourceBarriersClosed : G.resourceBarriers

def GraphicsAPIClosed (G : GraphicsAPIPackage) : Prop :=
  G.deviceCreated ∧ G.synchronization ∧ G.resourceBarriers

theorem graphics_api_closed_from_evidence (G : GraphicsAPIPackage)
    (E : GraphicsAPIEvidence G) : GraphicsAPIClosed G := by
  exact And.intro E.deviceCreatedClosed
    (And.intro E.synchronizationClosed E.resourceBarriersClosed)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
