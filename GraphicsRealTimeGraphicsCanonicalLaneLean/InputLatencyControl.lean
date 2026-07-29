import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRealTimeGraphicsCanonicalLaneLean

structure InputLatencyControlPackage where
  inputSamplingRate : Prop
  antiLagProcessing : Prop
  queueDepthLimit : Prop
  synchronizationMethod : Prop
  latencyBudget : Prop

structure InputLatencyControlEvidence (I : InputLatencyControlPackage) where
  inputSamplingRateClosed : I.inputSamplingRate
  antiLagProcessingClosed : I.antiLagProcessing
  queueDepthLimitClosed : I.queueDepthLimit
  synchronizationMethodClosed : I.synchronizationMethod
  latencyBudgetClosed : I.latencyBudget

def InputLatencyControlClosed (I : InputLatencyControlPackage) : Prop :=
  I.inputSamplingRate ∧ I.antiLagProcessing ∧ I.queueDepthLimit ∧ I.synchronizationMethod ∧ I.latencyBudget

theorem input_latency_control_closed_from_evidence (I : InputLatencyControlPackage) (E : InputLatencyControlEvidence I) : InputLatencyControlClosed I := by
  exact And.intro E.inputSamplingRateClosed (And.intro E.antiLagProcessingClosed (And.intro E.queueDepthLimitClosed (And.intro E.synchronizationMethodClosed E.latencyBudgetClosed)))

end GraphicsRealTimeGraphicsCanonicalLaneLean
end HautevilleHouse