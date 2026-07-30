import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure GenomicAssociation where
  gene : String
  variant : String
  oddsRatio : Float
  pValue : Float
  confidenceInterval : (Float × Float)

structure GenomicAssociationEvidence (A : GenomicAssociation) where
  oddsRatioPositiveClosed : A.oddsRatio > 0
  pValueValidClosed : A.pValue ≥ 0 ∧ A.pValue ≤ 1
  confidenceIntervalValidClosed : A.confidenceInterval.1 ≤ A.confidenceInterval.2

def GenomicAssociationClosed (A : GenomicAssociation) : Prop :=
  A.oddsRatio > 0 ∧ (A.pValue ≥ 0 ∧ A.pValue ≤ 1) ∧ A.confidenceInterval.1 ≤ A.confidenceInterval.2

theorem genomic_association_closed_from_evidence (A : GenomicAssociation) (E : GenomicAssociationEvidence A) : GenomicAssociationClosed A := by
  exact And.intro E.oddsRatioPositiveClosed (And.intro E.pValueValidClosed E.confidenceIntervalValidClosed)

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse