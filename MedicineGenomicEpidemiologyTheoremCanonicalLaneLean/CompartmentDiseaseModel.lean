import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure CompartmentDiseaseModel where
  compartments : List String
  transitionRates : List Float
  initialDistribution : List Float

structure CompartmentModelEvidence (M : CompartmentDiseaseModel) where
  compartmentsNonemptyClosed : M.compartments ≠ []
  transitionRatesNonnegativeClosed : ∀ r ∈ M.transitionRates, r ≥ 0
  initialDistributionValidClosed : (∀ x ∈ M.initialDistribution, x ≥ 0) ∧ (∑ x in M.initialDistribution, x = 1.0)

def CompartmentModelClosed (M : CompartmentDiseaseModel) : Prop :=
  M.compartments ≠ [] ∧ (∀ r ∈ M.transitionRates, r ≥ 0) ∧ (∀ x ∈ M.initialDistribution, x ≥ 0) ∧ (∑ x in M.initialDistribution, x = 1.0)

theorem compartment_model_closed_from_evidence (M : CompartmentDiseaseModel) (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  refine And.intro E.compartmentsNonemptyClosed ?_
  refine And.intro E.transitionRatesNonnegativeClosed ?_
  exact E.initialDistributionValidClosed

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse