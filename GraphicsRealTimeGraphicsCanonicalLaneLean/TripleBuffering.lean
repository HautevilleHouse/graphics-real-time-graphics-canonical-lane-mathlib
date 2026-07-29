import GraphicsRealTimeGraphicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure TripleBufferingPackage where
  backBuffer : Type
  frontBuffer : Type
  swapChain : Prop
  vsyncInterval : Prop
  bufferCount : Nat

structure TripleBufferingEvidence (T : TripleBufferingPackage) where
  backBufferAllocated : True
  frontBufferAllocated : True
  swapChainEnabled : T.swapChain
  vsyncSet : T.vsyncInterval
  bufferCountValid : T.bufferCount = 3

def TripleBufferingClosed (T : TripleBufferingPackage) : Prop :=
  T.swapChain ∧ T.vsyncInterval ∧ T.bufferCount = 3

theorem triple_buffering_closed_from_evidence (T : TripleBufferingPackage) (E : TripleBufferingEvidence T) : TripleBufferingClosed T := by
  exact And.intro E.swapChainEnabled (And.intro E.vsyncSet E.bufferCountValid)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse