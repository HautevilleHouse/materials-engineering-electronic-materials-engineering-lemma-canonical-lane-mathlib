import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure DopingPackage where
  dopingConcentration : ℝ
  intrinsicCarrierConcentration : ℝ
  donorEnergyLevel : ℝ
  acceptorEnergyLevel : ℝ
  temperature : ℝ

structure DopingEvidence (D : DopingPackage) where
  dopingClosed : D.dopingConcentration > 0
  intrinsicClosed : D.intrinsicCarrierConcentration > 0
  temperatureClosed : D.temperature > 0

def DopingClosed (D : DopingPackage) : Prop :=
  D.dopingConcentration > 0 ∧ D.intrinsicCarrierConcentration > 0 ∧ D.temperature > 0

theorem doping_closed_from_evidence (D : DopingPackage) (E : DopingEvidence D) : DopingClosed D := by
  exact And.intro E.dopingClosed (And.intro E.intrinsicClosed E.temperatureClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
