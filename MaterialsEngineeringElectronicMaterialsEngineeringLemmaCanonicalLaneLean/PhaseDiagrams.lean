import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  phaseBoundaries : Prop
  temperatureAxis : Prop
  compositionAxis : Prop
  gibbsFreeEnergy : Prop
  phaseRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  phaseRuleClosed : P.phaseRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.phaseRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed E.phaseRuleClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
