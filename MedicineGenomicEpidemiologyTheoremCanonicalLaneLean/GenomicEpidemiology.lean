import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure GenomicEpidemiologyPackage where
  gwasSumStats : Prop
  polygenicRiskScore : Prop
  heritabilityEstimate : Prop
  mendelianRandomization : Prop
  geneEnvironmentInteraction : Prop
  populationStratification : Prop
  genomicEpidemiologyModelsClosed : Prop

structure GenomicEpidemiologyEvidence (G : GenomicEpidemiologyPackage) where
  gwasSumStatsClosed : G.gwasSumStats
  polygenicRiskScoreClosed : G.polygenicRiskScore
  heritabilityEstimateClosed : G.heritabilityEstimate
  mendelianRandomizationClosed : G.mendelianRandomization
  geneEnvironmentInteractionClosed : G.geneEnvironmentInteraction
  populationStratificationClosed : G.populationStratification
  genomicEpidemiologyModelsClosed : G.genomicEpidemiologyModelsClosed

def GenomicEpidemiologyClosed (G : GenomicEpidemiologyPackage) : Prop :=
  G.gwasSumStats ∧ G.polygenicRiskScore ∧ G.heritabilityEstimate ∧
  G.mendelianRandomization ∧ G.geneEnvironmentInteraction ∧
  G.populationStratification ∧ G.genomicEpidemiologyModelsClosed

theorem genomic_epidemiology_closed_from_evidence (G : GenomicEpidemiologyPackage) (E : GenomicEpidemiologyEvidence G) :
    GenomicEpidemiologyClosed G := by
  exact And.intro E.gwasSumStatsClosed
    (And.intro E.polygenicRiskScoreClosed
      (And.intro E.heritabilityEstimateClosed
        (And.intro E.mendelianRandomizationClosed
          (And.intro E.geneEnvironmentInteractionClosed
            (And.intro E.populationStratificationClosed E.genomicEpidemiologyModelsClosed)))))

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse