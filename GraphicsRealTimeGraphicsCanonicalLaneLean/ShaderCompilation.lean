import GraphicsRealTimeGraphicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure ShaderCompilationPackage where
  vertexShaderSource : String
  fragmentShaderSource : String
  compileSuccess : Prop
  linkSuccess : Prop
  uniformBinding : Prop

structure ShaderCompilationEvidence (S : ShaderCompilationPackage) where
  vertexCompiled : S.compileSuccess
  fragmentCompiled : S.compileSuccess
  linked : S.linkSuccess
  uniformsBound : S.uniformBinding

def ShaderCompilationClosed (S : ShaderCompilationPackage) : Prop :=
  S.compileSuccess ∧ S.linkSuccess ∧ S.uniformBinding

theorem shader_compilation_closed_from_evidence (S : ShaderCompilationPackage) (E : ShaderCompilationEvidence S) : ShaderCompilationClosed S := by
  exact And.intro E.vertexCompiled (And.intro E.linked E.uniformsBound)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse