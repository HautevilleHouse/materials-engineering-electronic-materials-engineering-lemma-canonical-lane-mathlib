import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeVectors : Type u
  bravaisLattice : Type v
  reciprocalVectors : Type w
  millerIndices : Type x
  unitCellVolume : Prop
  symmetries : Prop
  diffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellVolumeClosed : C.unitCellVolume
  symmetriesClosed : C.symmetries
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellVolume ∧ C.symmetries ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.symmetriesClosed E.diffractionPatternClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
