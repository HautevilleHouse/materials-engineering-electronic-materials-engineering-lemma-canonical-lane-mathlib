import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure TransportPropertiesPackage where
  chargeCarriers : Type u
  mobility : Type v
  conductivity : Type w
  boltzmannTransport : Prop
  drudeModel : Prop
  hallEffect : Prop
  thermoelectricEffect : Prop

structure TransportPropertiesEvidence (T : TransportPropertiesPackage) where
  boltzmannTransportClosed : T.boltzmannTransport
  drudeModelClosed : T.drudeModel
  hallEffectClosed : T.hallEffect
  thermoelectricEffectClosed : T.thermoelectricEffect

def TransportPropertiesClosed (T : TransportPropertiesPackage) : Prop :=
  T.boltzmannTransport ∧ T.drudeModel ∧ T.hallEffect ∧ T.thermoelectricEffect

theorem transport_properties_closed_from_evidence (T : TransportPropertiesPackage) (E : TransportPropertiesEvidence T) :
    TransportPropertiesClosed T := by
  exact And.intro E.boltzmannTransportClosed (And.intro E.drudeModelClosed (And.intro E.hallEffectClosed E.thermoelectricEffectClosed))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
