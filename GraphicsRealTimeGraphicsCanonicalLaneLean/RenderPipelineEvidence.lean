import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure RenderPipelineEvidence where
  frameBufferAllocated : Prop
  shaderCompiled : Prop
  drawCallIssued : Prop
  presentCalled : Prop
  frameBufferAllocatedClosed : frameBufferAllocated
  shaderCompiledClosed : shaderCompiled
  drawCallIssuedClosed : drawCallIssued
  presentCalledClosed : presentCalled

structure RenderPipelinePackage where
  frameBuffer : Type
  shader : Type
  drawCall : Type
  present : Type
  allocationGuarantee : Prop
  compilationGuarantee : Prop
  issueGuarantee : Prop
  presentGuarantee : Prop

def RenderPipelineClosed (P : RenderPipelinePackage) : Prop :=
  P.allocationGuarantee ∧ P.compilationGuarantee ∧ P.issueGuarantee ∧ P.presentGuarantee

theorem render_pipeline_closed_from_evidence (P : RenderPipelinePackage)
    (E : RenderPipelineEvidence) : RenderPipelineClosed P := by
  exact And.intro E.frameBufferAllocatedClosed
    (And.intro E.shaderCompiledClosed
      (And.intro E.drawCallIssuedClosed E.presentCalledClosed))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
