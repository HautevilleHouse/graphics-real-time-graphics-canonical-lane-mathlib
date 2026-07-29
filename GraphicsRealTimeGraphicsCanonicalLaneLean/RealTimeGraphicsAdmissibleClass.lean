import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure RealTimeGraphicsAdmittedObject where
  frameBuffer : Type
  renderPipeline : Type
  gpuState : Type
  outputProduced : Prop
  realTimeConstraint : Prop
  frameRateGuaranteed : outputProduced → realTimeConstraint

structure GraphicsAdmissibleClass where
  object : RealTimeGraphicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
