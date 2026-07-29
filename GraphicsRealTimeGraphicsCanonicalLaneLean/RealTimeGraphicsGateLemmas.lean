import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsBridgeLemmas

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

def gateClosed (A : GraphicsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GraphicsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
