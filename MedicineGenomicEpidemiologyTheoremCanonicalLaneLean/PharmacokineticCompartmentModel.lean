import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure CompartmentParameters where
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeOfDistribution : ℝ
  dose : ℝ

structure PharmacokineticCompartmentModel (C : CompartmentParameters) where
  plasmaConcentration : ℝ → ℝ
  satisfiesOneCompartmentODE : Prop
  initialCondition : Prop
  solutionClosedForm : Prop

structure CompartmentModelEvidence {C : CompartmentParameters} (M : PharmacokineticCompartmentModel C) where
  satisfiesOneCompartmentODEClosed : M.satisfiesOneCompartmentODE
  initialConditionClosed : M.initialCondition
  solutionClosedFormClosed : M.solutionClosedForm

def CompartmentModelClosed {C : CompartmentParameters} (M : PharmacokineticCompartmentModel C) : Prop :=
  M.satisfiesOneCompartmentODE ∧ M.initialCondition ∧ M.solutionClosedForm

theorem compartment_model_closed_from_evidence {C : CompartmentParameters}
    (M : PharmacokineticCompartmentModel C) (E : CompartmentModelEvidence M) :
    CompartmentModelClosed M := by
  exact And.intro E.satisfiesOneCompartmentODEClosed
    (And.intro E.initialConditionClosed E.solutionClosedFormClosed)

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
