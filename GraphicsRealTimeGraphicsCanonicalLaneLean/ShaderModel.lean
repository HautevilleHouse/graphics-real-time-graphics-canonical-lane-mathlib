import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure ShaderModelPackage where
  vertexShader : Type u
  fragmentShader : Type v
  geometryShader : Type w
  uniformData : Type x
  vertexTransformCorrect : Prop
  fragmentColorCorrect : Prop
  shaderBindingComplete : Prop

structure ShaderModelEvidence (S : ShaderModelPackage) where
  vertexTransformCorrectClosed : S.vertexTransformCorrect
  fragmentColorCorrectClosed : S.fragmentColorCorrect
  shaderBindingCompleteClosed : S.shaderBindingComplete

def ShaderModelClosed (S : ShaderModelPackage) : Prop :=
  S.vertexTransformCorrect ∧ S.fragmentColorCorrect ∧ S.shaderBindingComplete

theorem shader_model_closed_from_evidence (S : ShaderModelPackage)
    (E : ShaderModelEvidence S) : ShaderModelClosed S := by
  exact And.intro E.vertexTransformCorrectClosed
    (And.intro E.fragmentColorCorrectClosed E.shaderBindingCompleteClosed)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse