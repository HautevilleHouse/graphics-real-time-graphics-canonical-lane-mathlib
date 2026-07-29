import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure ShaderPipelinePackage where
  vertexShader : Prop
  tessellationShader : Prop
  geometryShader : Prop
  fragmentShader : Prop
  computeShader : Prop

def ShaderPipelineClosed (S : ShaderPipelinePackage) : Prop :=
  S.vertexShader ∧ S.tessellationShader ∧ S.geometryShader ∧ S.fragmentShader ∧ S.computeShader

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
