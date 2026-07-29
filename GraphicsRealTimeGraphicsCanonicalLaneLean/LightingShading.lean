import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure LightingPackage where
  ambientLight : Type
  directionalLight : Type
  pointLight : Type
  spotLight : Type
  shadowMapping : Prop
  materialProperties : Prop

structure LightingEvidence (L : LightingPackage) where
  ambientLightClosed : L.ambientLight
  directionalLightClosed : L.directionalLight
  pointLightClosed : L.pointLight
  spotLightClosed : L.spotLight
  shadowMappingClosed : L.shadowMapping
  materialPropertiesClosed : L.materialProperties

def LightingClosed (L : LightingPackage) : Prop :=
  L.ambientLight ∧ L.directionalLight ∧ L.pointLight ∧ L.spotLight ∧ L.shadowMapping ∧ L.materialProperties

theorem lighting_closed_from_evidence (L : LightingPackage) (E : LightingEvidence L) : LightingClosed L := by
  exact And.intro E.ambientLightClosed (And.intro E.directionalLightClosed (And.intro E.pointLightClosed (And.intro E.spotLightClosed (And.intro E.shadowMappingClosed E.materialPropertiesClosed))))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse