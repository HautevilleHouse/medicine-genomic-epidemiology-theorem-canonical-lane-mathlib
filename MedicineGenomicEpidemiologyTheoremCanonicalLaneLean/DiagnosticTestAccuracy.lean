import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure TestParameters where
  sensitivity : ℝ
  specificity : ℝ
  prevalence : ℝ

structure DiagnosticTestAccuracy (P : TestParameters) where
  positivePredictiveValue : ℝ
  negativePredictiveValue : ℝ
  accuracy : ℝ
  ppvFormulaClosed : Prop
  npvFormulaClosed : Prop
  accuracyFormulaClosed : Prop

structure DiagnosticTestEvidence {P : TestParameters} (D : DiagnosticTestAccuracy P) where
  ppvFormulaClosed : D.ppvFormulaClosed
  npvFormulaClosed : D.npvFormulaClosed
  accuracyFormulaClosed : D.accuracyFormulaClosed

def DiagnosticTestClosed {P : TestParameters} (D : DiagnosticTestAccuracy P) : Prop :=
  D.ppvFormulaClosed ∧ D.npvFormulaClosed ∧ D.accuracyFormulaClosed

theorem diagnostic_test_closed_from_evidence {P : TestParameters}
    (D : DiagnosticTestAccuracy P) (E : DiagnosticTestEvidence D) :
    DiagnosticTestClosed D := by
  exact And.intro E.ppvFormulaClosed (And.intro E.npvFormulaClosed E.accuracyFormulaClosed)

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
