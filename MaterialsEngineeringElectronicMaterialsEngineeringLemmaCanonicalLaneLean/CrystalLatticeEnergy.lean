import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure CrystalLatticeEnergyPackage where
  latticeConstant : ℝ
  nearestNeighborDistance : ℝ
  atomicNumber : ℕ
  bondingType : String
  cohesiveEnergy : ℝ
  bandGap : ℝ

structure CrystalLatticeEnergyEvidence (C : CrystalLatticeEnergyPackage) where
  latticeConstantMeasured : C.latticeConstant > 0
  cohesiveEnergyClosed : C.cohesiveEnergy < 0
  bandGapClosed : C.bandGap > 0

def CrystalLatticeEnergyClosed (C : CrystalLatticeEnergyPackage) : Prop :=
  C.latticeConstant > 0 ∧ C.cohesiveEnergy < 0 ∧ C.bandGap > 0

theorem crystal_lattice_energy_closed_from_evidence (C : CrystalLatticeEnergyPackage) (E : CrystalLatticeEnergyEvidence C) : CrystalLatticeEnergyClosed C := by
  exact And.intro E.latticeConstantMeasured (And.intro E.cohesiveEnergyClosed E.bandGapClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
