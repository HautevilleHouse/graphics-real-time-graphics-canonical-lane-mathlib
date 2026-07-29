import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure TransformationMatrix where
  modelMatrix : Type
  viewMatrix : Type
  projectionMatrix : Type
  modelViewProjection : Prop
  normalMatrix : Prop
  matrixInverse : Prop

structure TransformationMatrixEvidence (T : TransformationMatrix) where
  modelMatrixClosed : T.modelMatrix
  viewMatrixClosed : T.viewMatrix
  projectionMatrixClosed : T.projectionMatrix
  modelViewProjectionClosed : T.modelViewProjection
  normalMatrixClosed : T.normalMatrix
  matrixInverseClosed : T.matrixInverse

def TransformationMatrixClosed (T : TransformationMatrix) : Prop :=
  T.modelMatrix ∧ T.viewMatrix ∧ T.projectionMatrix ∧ T.modelViewProjection ∧ T.normalMatrix ∧ T.matrixInverse

theorem transformation_matrix_closed_from_evidence (T : TransformationMatrix) (E : TransformationMatrixEvidence T) : TransformationMatrixClosed T := by
  exact And.intro E.modelMatrixClosed (And.intro E.viewMatrixClosed (And.intro E.projectionMatrixClosed (And.intro E.modelViewProjectionClosed (And.intro E.normalMatrixClosed E.matrixInverseClosed))))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse