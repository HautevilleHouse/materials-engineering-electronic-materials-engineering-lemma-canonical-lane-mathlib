import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure TransportPhenomena where
  carrierType : Type u
  scatteringMechanisms : Prop
  mobilityModel : Prop
  conductivityTensor : Prop
  thermoelectricCoefficients : Prop

def TransportPhenomenaClosed (T : TransportPhenomena) : Prop :=
  T.scatteringMechanisms ∧ T.mobilityModel ∧ T.conductivityTensor ∧ T.thermoelectricCoefficients

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse