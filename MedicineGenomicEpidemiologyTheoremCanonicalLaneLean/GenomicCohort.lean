import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure GenomicCohort where
  populationSize : Nat
  genotypes : Type
  phenotypes : Type
  genotypeFrequencies : List (Float × Float)
  heritability : Float
  heritabilityPositive : heritability > 0

structure HardyWeinbergEquilibrium where
  genotypeProportions : (Float × Float × Float)
  sumToOne : genotypeProportions.1 + genotypeProcentions.2 + genotypeProportions.3 = 1
  equilibriumCondition : genotypeProportions.2^2 = 4 * genotypeProportions.1 * genotypeProportions.3

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse