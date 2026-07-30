import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModel where
  drugConcentration : Float → Float  -- function of time
  absorptionRate : Float
  eliminationRate : Float
  volumeOfDistribution : Float
  initialDose : Float
  doseAdministered : initialDose > 0
  absorptionPositive : absorptionRate > 0
  eliminationPositive : eliminationRate > 0

structure PKClosure where
  areaUnderCurve : Float
  halfLife : Float
  clearance : Float
  steadyStateConcentration : Float
  curveFiniteArea : areaUnderCurve < ∞

theorem pk_closure_from_admissible (M : PharmacokineticModel) : PKClosure :=
  sorry

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse