import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure TexturePackage where
  texture2D : Type
  texture3D : Type
  textureCube : Type
  sampler : Type
  uvCoordinates : Prop
  mipMapping : Prop
  anisotropicFiltering : Prop

structure TextureEvidence (T : TexturePackage) where
  texture2DClosed : T.texture2D
  texture3DClosed : T.texture3D
  textureCubeClosed : T.textureCube
  samplerClosed : T.sampler
  uvCoordinatesClosed : T.uvCoordinates
  mipMappingClosed : T.mipMapping
  anisotropicFilteringClosed : T.anisotropicFiltering

def TextureClosed (T : TexturePackage) : Prop :=
  T.texture2D ∧ T.texture3D ∧ T.textureCube ∧ T.sampler ∧ T.uvCoordinates ∧ T.mipMapping ∧ T.anisotropicFiltering

theorem texture_closed_from_evidence (T : TexturePackage) (E : TextureEvidence T) : TextureClosed T := by
  exact And.intro E.texture2DClosed (And.intro E.texture3DClosed (And.intro E.textureCubeClosed (And.intro E.samplerClosed (And.intro E.uvCoordinatesClosed (And.intro E.mipMappingClosed E.anisotropicFilteringClosed)))))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse