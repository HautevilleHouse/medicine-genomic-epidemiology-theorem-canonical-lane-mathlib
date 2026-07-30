import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatioPositive : Prop
  likelihoodRatioNegative : Prop
  preTestProbability : Prop
  postTestProbability : Prop
  inferenceRulesClosed : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioPositiveClosed : D.likelihoodRatioPositive
  likelihoodRatioNegativeClosed : D.likelihoodRatioNegative
  preTestProbabilityClosed : D.preTestProbability
  postTestProbabilityClosed : D.postTestProbability
  inferenceRulesClosed : D.inferenceRulesClosed

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧
  D.likelihoodRatioPositive ∧ D.likelihoodRatioNegative ∧ D.preTestProbability ∧
  D.postTestProbability ∧ D.inferenceRulesClosed

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed
          (And.intro E.likelihoodRatioPositiveClosed
            (And.intro E.likelihoodRatioNegativeClosed
              (And.intro E.preTestProbabilityClosed
                (And.intro E.postTestProbabilityClosed E.inferenceRulesClosed)))))))

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse