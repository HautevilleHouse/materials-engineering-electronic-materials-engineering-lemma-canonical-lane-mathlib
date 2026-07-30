import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure EpitaxySurgeryPackage where
  substratePrep : Prop
  bufferLayerGrowth : Prop
  activeRegionDeposition : Prop
  capLayerProtection : Prop

def EpitaxySurgeryClosed (P : EpitaxySurgeryPackage) : Prop :=
  P.substratePrep ∧ P.bufferLayerGrowth ∧ P.activeRegionDeposition ∧ P.capLayerProtection

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse