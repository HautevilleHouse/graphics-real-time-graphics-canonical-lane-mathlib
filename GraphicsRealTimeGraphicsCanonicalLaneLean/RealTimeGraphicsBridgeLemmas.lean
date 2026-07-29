import HautevilleHouse.GraphicsRealTimeGraphicsCanonicalLaneLean.RealTimeGraphicsAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

def bridgeClosed (A : GraphicsAdmissibleClass) : Prop :=
  let O := A.object
  O.frameRateGuaranteed O.outputProduced

theorem bridge_from_admissible_class (A : GraphicsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.frameRateGuaranteed A.object.outputProduced

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
