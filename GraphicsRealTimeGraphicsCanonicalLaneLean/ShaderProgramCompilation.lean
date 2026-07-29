import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure ShaderProgramCompilationPackage where
  sourceParsing : Prop
  semanticAnalysis : Prop
  codeGeneration : Prop
  optimizationPass : Prop
  binaryEmission : Prop

structure ShaderProgramCompilationEvidence (S : ShaderProgramCompilationPackage) where
  sourceParsingClosed : S.sourceParsing
  semanticAnalysisClosed : S.semanticAnalysis
  codeGenerationClosed : S.codeGeneration
  optimizationPassClosed : S.optimizationPass
  binaryEmissionClosed : S.binaryEmission

def ShaderProgramCompilationClosed (S : ShaderProgramCompilationPackage) : Prop :=
  S.sourceParsing ∧ S.semanticAnalysis ∧ S.codeGeneration ∧ S.optimizationPass ∧ S.binaryEmission

theorem shader_program_compilation_closed_from_evidence (S : ShaderProgramCompilationPackage) (E : ShaderProgramCompilationEvidence S) : ShaderProgramCompilationClosed S := by
  exact And.intro E.sourceParsingClosed (And.intro E.semanticAnalysisClosed (And.intro E.codeGenerationClosed (And.intro E.optimizationPassClosed E.binaryEmissionClosed)))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse