import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure RenderingPipelinePackage where
  vertexShader : Type
  fragmentShader : Type
  rasterizerStage : Prop
  blendStage : Prop
  pipelineCompiled : Prop

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  vertexShaderClosed : R.vertexShader
  fragmentShaderClosed : R.fragmentShader
  rasterizerStageClosed : R.rasterizerStage
  blendStageClosed : R.blendStage
  pipelineCompiledClosed : R.pipelineCompiled

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.vertexShader ∧ R.fragmentShader ∧ R.rasterizerStage ∧ R.blendStage ∧ R.pipelineCompiled

theorem rendering_pipeline_closed_from_evidence (R : RenderingPipelinePackage) (E : RenderingPipelineEvidence R) : RenderingPipelineClosed R := by
  exact And.intro E.vertexShaderClosed (And.intro E.fragmentShaderClosed (And.intro E.rasterizerStageClosed (And.intro E.blendStageClosed E.pipelineCompiledClosed)))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse