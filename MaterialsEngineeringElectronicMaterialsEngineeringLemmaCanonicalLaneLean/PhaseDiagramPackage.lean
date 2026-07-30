import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  phaseRegions : Prop
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  temperatureRange : Prop
  compositionRange : Prop
  eutecticPoint : Prop
  peritecticPoint : Prop

structure PhaseDiagramEvidence (D : PhaseDiagramPackage) where
  phaseRegionsClosed : D.phaseRegions
  phaseBoundariesClosed : D.phaseBoundaries
  gibbsFreeEnergyClosed : D.gibbsFreeEnergy
  temperatureRangeClosed : D.temperatureRange
  compositionRangeClosed : D.compositionRange
  eutecticPointClosed : D.eutecticPoint
  peritecticPointClosed : D.peritecticPoint

def PhaseDiagramClosed (D : PhaseDiagramPackage) : Prop :=
  D.phaseRegions ∧ D.phaseBoundaries ∧ D.gibbsFreeEnergy ∧
  D.temperatureRange ∧ D.compositionRange ∧ D.eutecticPoint ∧ D.peritecticPoint

theorem phase_diagram_closed_from_evidence (D : PhaseDiagramPackage) (E : PhaseDiagramEvidence D) :
    PhaseDiagramClosed D := by
  exact And.intro E.phaseRegionsClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.temperatureRangeClosed
          (And.intro E.compositionRangeClosed
            (And.intro E.eutecticPointClosed E.peritecticPointClosed)))))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse