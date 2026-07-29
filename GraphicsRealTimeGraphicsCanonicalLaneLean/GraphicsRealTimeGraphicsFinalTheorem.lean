import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsBridgeLemmas
import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsGateLemmas

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

def ConstrainedGraphicsClosure (A : GraphicsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_endgame (A : GraphicsAdmissibleClass) :
    ConstrainedGraphicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
