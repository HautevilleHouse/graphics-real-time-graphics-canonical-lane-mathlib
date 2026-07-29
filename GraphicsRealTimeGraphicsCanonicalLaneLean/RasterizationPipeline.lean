import GraphicsRealTimeGraphicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure RasterizationPipelinePackage where
  vertexShader : Type
  fragmentShader : Type
  depthTest : Prop
  viewportTransform : Prop
  scissorTest : Prop

structure RasterizationPipelineEvidence (P : RasterizationPipelinePackage) where
  vertexShaderCompiled : True
  fragmentShaderCompiled : True
  depthTestEnabled : P.depthTest
  viewportTransformCorrect : P.viewportTransform
  scissorTestActive : P.scissorTest

def RasterizationPipelineClosed (P : RasterizationPipelinePackage) : Prop :=
  P.depthTest ∧ P.viewportTransform ∧ P.scissorTest

theorem rasterization_pipeline_closed_from_evidence (P : RasterizationPipelinePackage) (E : RasterizationPipelineEvidence P) : RasterizationPipelineClosed P := by
  exact And.intro E.depthTestEnabled (And.intro E.viewportTransformCorrect E.scissorTestActive)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse