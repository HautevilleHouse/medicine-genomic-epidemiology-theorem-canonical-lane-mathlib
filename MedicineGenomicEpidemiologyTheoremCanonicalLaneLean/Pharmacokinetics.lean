import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  drugConcentration : Prop
  plasmaBinding : Prop
  metabolismPathway : Prop
  clearance : Prop
  pkEquationsClosed : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  drugConcentrationClosed : P.drugConcentration
  plasmaBindingClosed : P.plasmaBinding
  metabolismPathwayClosed : P.metabolismPathway
  clearanceClosed : P.clearance
  pkEquationsClosed : P.pkEquationsClosed

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧
  P.drugConcentration ∧ P.plasmaBinding ∧ P.metabolismPathway ∧
  P.clearance ∧ P.pkEquationsClosed

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.drugConcentrationClosed
          (And.intro E.plasmaBindingClosed
            (And.intro E.metabolismPathwayClosed
              (And.intro E.clearanceClosed E.pkEquationsClosed))))))

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse