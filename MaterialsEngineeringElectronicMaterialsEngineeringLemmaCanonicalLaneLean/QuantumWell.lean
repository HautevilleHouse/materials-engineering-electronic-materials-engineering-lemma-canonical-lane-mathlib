import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure QuantumWell where
  wellWidth : Nat
  barrierHeight : Nat
  confinedStates : Prop
  intersubbandTransitions : Prop
  opticalProperties : Prop

def QuantumWellClosed (Q : QuantumWell) : Prop :=
  Q.confinedStates ∧ Q.intersubbandTransitions ∧ Q.opticalProperties

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse