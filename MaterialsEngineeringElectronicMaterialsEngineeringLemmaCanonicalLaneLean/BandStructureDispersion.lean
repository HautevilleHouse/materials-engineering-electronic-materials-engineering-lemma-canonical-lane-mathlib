import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure BandStructurePackage where
  valenceBandMaxEnergy : ℝ
  conductionBandMinEnergy : ℝ
  effectiveMassElectron : ℝ
  effectiveMassHole : ℝ
  bandCurvature : ℝ

structure BandStructureEvidence (B : BandStructurePackage) where
  bandGapPositive : B.conductionBandMinEnergy - B.valenceBandMaxEnergy > 0
  effectiveMassElectronFinite : B.effectiveMassElectron > 0
  effectiveMassHoleFinite : B.effectiveMassHole < 0

def BandStructureClosed (B : BandStructurePackage) : Prop :=
  B.conductionBandMinEnergy - B.valenceBandMaxEnergy > 0 ∧
  B.effectiveMassElectron > 0 ∧ B.effectiveMassHole < 0

theorem band_structure_closed_from_evidence (B : BandStructurePackage) (E : BandStructureEvidence B) : BandStructureClosed B := by
  exact And.intro E.bandGapPositive (And.intro E.effectiveMassElectronFinite E.effectiveMassHoleFinite)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
