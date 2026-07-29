import GraphicsRealTimeGraphicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse