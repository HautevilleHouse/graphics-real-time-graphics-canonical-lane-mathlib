import GraphicsRealTimeGraphicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure TransformFeedbackPackage where
  geometryShader : Type
  bufferObjects : Prop
  transformFeedbackMode : Prop
  primitiveQuery : Prop

structure TransformFeedbackEvidence (T : TransformFeedbackPackage) where
  geometryShaderBound : True
  bufferAllocated : T.bufferObjects
  modeActive : T.transformFeedbackMode
  queryStarted : T.primitiveQuery

def TransformFeedbackClosed (T : TransformFeedbackPackage) : Prop :=
  T.bufferObjects ∧ T.transformFeedbackMode ∧ T.primitiveQuery

theorem transform_feedback_closed_from_evidence (T : TransformFeedbackPackage) (E : TransformFeedbackEvidence T) : TransformFeedbackClosed T := by
  exact And.intro E.bufferAllocated (And.intro E.modeActive E.queryStarted)

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse