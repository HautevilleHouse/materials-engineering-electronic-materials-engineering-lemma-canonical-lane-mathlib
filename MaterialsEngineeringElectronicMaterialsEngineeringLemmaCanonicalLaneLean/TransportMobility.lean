import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure TransportPackage where
  mobilityElectron : ℝ
  mobilityHole : ℝ
  conductivity : ℝ
  diffusivityElectron : ℝ
  diffusivityHole : ℝ

structure TransportEvidence (T : TransportPackage) where
  mobilityElectronPositive : T.mobilityElectron > 0
  mobilityHolePositive : T.mobilityHole > 0
  conductivityFinite : T.conductivity > 0

def TransportClosed (T : TransportPackage) : Prop :=
  T.mobilityElectron > 0 ∧ T.mobilityHole > 0 ∧ T.conductivity > 0

theorem transport_closed_from_evidence (T : TransportPackage) (E : TransportEvidence T) : TransportClosed T := by
  exact And.intro E.mobilityElectronPositive (And.intro E.mobilityHolePositive E.conductivityFinite)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
