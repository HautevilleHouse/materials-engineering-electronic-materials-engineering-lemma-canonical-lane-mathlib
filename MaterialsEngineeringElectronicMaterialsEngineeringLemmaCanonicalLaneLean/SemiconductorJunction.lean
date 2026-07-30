import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure SemiconductorJunction where
  pType : Type u
  nType : Type v
  depletionRegion : Prop
  builtInPotential : Prop
  ivCharacteristics : Prop

def SemiconductorJunctionClosed (J : SemiconductorJunction) : Prop :=
  J.depletionRegion ∧ J.builtInPotential ∧ J.ivCharacteristics

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse