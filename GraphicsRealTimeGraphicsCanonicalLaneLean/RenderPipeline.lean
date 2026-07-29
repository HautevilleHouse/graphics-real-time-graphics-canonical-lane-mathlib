import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure RenderPipelinePackage where
  geometryInput : Type u
  shaderProgram : Type v
  framebufferOutput : Type w
  vertexTransform : Prop
  rasterization : Prop
  fragmentProcessing : Prop
  outputMerging : Prop

structure RenderPipelineEvidence (P : RenderPipelinePackage) where
  vertexTransformClosed : P.vertexTransform
  rasterizationClosed : P.rasterization
  fragmentProcessingClosed : P.fragmentProcessing
  outputMergingClosed : P.outputMerging

def RenderPipelineClosed (P : RenderPipelinePackage) : Prop :=
  P.vertexTransform ∧ P.rasterization ∧ P.fragmentProcessing ∧ P.outputMerging

theorem render_pipeline_closed_from_evidence (P : RenderPipelinePackage)
    (E : RenderPipelineEvidence P) : RenderPipelineClosed P := by
  exact And.intro E.vertexTransformClosed
    (And.intro E.rasterizationClosed
      (And.intro E.fragmentProcessingClosed E.outputMergingClosed))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse