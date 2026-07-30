import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  susceptible : Prop
  exposed : Prop
  infected : Prop
  recovered : Prop
  transmissionRate : Prop
  incubationPeriod : Prop
  recoveryRate : Prop
  compartmentEquationsClosed : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  susceptibleClosed : C.susceptible
  exposedClosed : C.exposed
  infectedClosed : C.infected
  recoveredClosed : C.recovered
  transmissionRateClosed : C.transmissionRate
  incubationPeriodClosed : C.incubationPeriod
  recoveryRateClosed : C.recoveryRate
  compartmentEquationsClosed : C.compartmentEquationsClosed

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.susceptible ∧ C.exposed ∧ C.infected ∧ C.recovered ∧
  C.transmissionRate ∧ C.incubationPeriod ∧ C.recoveryRate ∧ C.compartmentEquationsClosed

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.susceptibleClosed
    (And.intro E.exposedClosed
      (And.intro E.infectedClosed
        (And.intro E.recoveredClosed
          (And.intro E.transmissionRateClosed
            (And.intro E.incubationPeriodClosed
              (And.intro E.recoveryRateClosed E.compartmentEquationsClosed))))))

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse