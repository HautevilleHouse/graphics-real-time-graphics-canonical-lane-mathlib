import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure LightingPackage where
  ambientLighting : Prop
  diffuseLighting : Prop
  specularLighting : Prop
  shadowMapping : Prop
  globalIllumination : Prop

def LightingClosed (L : LightingPackage) : Prop :=
  L.ambientLighting ∧ L.diffuseLighting ∧ L.specularLighting ∧ L.shadowMapping ∧ L.globalIllumination

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse
