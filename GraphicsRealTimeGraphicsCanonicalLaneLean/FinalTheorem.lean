import canonicalLaneMathlib.AdmissibleClass
import GraphicsRealTimeGraphicsCanonicalLaneLean.RenderingPipeline
import GraphicsRealTimeGraphicsCanonicalLaneLean.ShaderPipeline
import GraphicsRealTimeGraphicsCanonicalLaneLean.GPUPipeline
import GraphicsRealTimeGraphicsCanonicalLaneLean.FrameBuffer
import GraphicsRealTimeGraphicsCanonicalLaneLean.TextureMapping
import GraphicsRealTimeGraphicsCanonicalLaneLean.Lighting

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object = A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  rfl

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def GraphicsRealTimeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem graphics_real_time_endgame (A : AdmissibleClass) : GraphicsRealTimeClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
