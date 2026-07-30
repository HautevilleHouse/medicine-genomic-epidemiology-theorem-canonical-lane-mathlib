import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure SurvivalParameters where
  baselineHazard : ℝ → ℝ
  hazardRatio : ℝ
  covariates : List ℝ

structure SurvivalModel (S : SurvivalParameters) where
  survivalFunction : ℝ → ℝ
  hazardFunction : ℝ → ℝ
  coxProportionalHazards : Prop
  baselineHazardSpecified : Prop
  likelihoodFunction : Prop

structure SurvivalEvidence {S : SurvivalParameters} (M : SurvivalModel S) where
  coxProportionalHazardsClosed : M.coxProportionalHazards
  baselineHazardSpecifiedClosed : M.baselineHazardSpecified
  likelihoodFunctionClosed : M.likelihoodFunction

def SurvivalModelClosed {S : SurvivalParameters} (M : SurvivalModel S) : Prop :=
  M.coxProportionalHazards ∧ M.baselineHazardSpecified ∧ M.likelihoodFunction

theorem survival_model_closed_from_evidence {S : SurvivalParameters}
    (M : SurvivalModel S) (E : SurvivalEvidence M) : SurvivalModelClosed M := by
  exact And.intro E.coxProportionalHazardsClosed
    (And.intro E.baselineHazardSpecifiedClosed E.likelihoodFunctionClosed)

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
