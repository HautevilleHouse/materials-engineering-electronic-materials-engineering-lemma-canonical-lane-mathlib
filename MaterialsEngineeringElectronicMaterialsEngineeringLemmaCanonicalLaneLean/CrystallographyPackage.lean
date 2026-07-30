import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  bravaisLattice : Prop
  basisVectors : Prop
  primitiveCellVolume : Prop
  reciprocalLattice : Prop
  brillouinZone : Prop
  symmetryGroup : Type v
  spaceGroup : Prop
  pointGroup : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  basisVectorsClosed : C.basisVectors
  primitiveCellVolumeClosed : C.primitiveCellVolume
  reciprocalLatticeClosed : C.reciprocalLattice
  brillouinZoneClosed : C.brillouinZone
  spaceGroupClosed : C.spaceGroup
  pointGroupClosed : C.pointGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.basisVectors ∧ C.primitiveCellVolume ∧
  C.reciprocalLattice ∧ C.brillouinZone ∧ C.spaceGroup ∧ C.pointGroup

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.basisVectorsClosed
      (And.intro E.primitiveCellVolumeClosed
        (And.intro E.reciprocalLatticeClosed
          (And.intro E.brillouinZoneClosed
            (And.intro E.spaceGroupClosed E.pointGroupClosed)))))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse