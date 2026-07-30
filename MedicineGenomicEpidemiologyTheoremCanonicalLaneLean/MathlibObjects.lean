import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MedicineGenomicEpidemiologyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MedicineGenomicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MedicineGenomicAdmittedObject where
  space : MedicineGenomicSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure MedicineGenomicEndgameState where
  object : MedicineGenomicAdmittedObject

def MedicineGenomicWitnessClosed (O : MedicineGenomicAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end MedicineGenomicEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse