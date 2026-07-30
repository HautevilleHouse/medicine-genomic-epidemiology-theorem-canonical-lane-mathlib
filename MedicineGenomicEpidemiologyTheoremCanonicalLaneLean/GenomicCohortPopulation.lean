import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure GenomicCohortPopulation where
  populationSize : Nat
  geneticMarkers : List String
  diseasePrevalence : Float
  markerFrequencies : List Float
  heritabilityEstimate : Float

structure GenomicCohortEvidence (P : GenomicCohortPopulation) where
  populationSizeClosed : P.populationSize > 0
  geneticMarkersNonemptyClosed : P.geneticMarkers ≠ []
  prevalenceValidClosed : P.diseasePrevalence ≥ 0 ∧ P.diseasePrevalence ≤ 1

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse