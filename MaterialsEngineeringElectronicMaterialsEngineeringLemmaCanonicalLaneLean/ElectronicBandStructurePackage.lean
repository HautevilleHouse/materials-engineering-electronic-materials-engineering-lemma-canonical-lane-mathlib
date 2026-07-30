import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure ElectronicBandStructurePackage where
  bandEnergy : Type u
  waveVector : Type v
  effectiveMass : Type w
  densityOfStates : Type x
  bandGap : Prop
  parabolicDispersion : Prop
  fermiSurface : Prop
  semiconductorClassification : Prop
  bandGapTerm : bandGap
  parabolicDispersionTerm : parabolicDispersion
  fermiSurfaceTerm : fermiSurface
  semiconductorClassificationTerm : semiconductorClassification

structure ElectronicBandStructureEvidence (B : ElectronicBandStructurePackage) where
  bandGapClosed : B.bandGap
  parabolicDispersionClosed : B.parabolicDispersion
  fermiSurfaceClosed : B.fermiSurface
  semiconductorClassificationClosed : B.semiconductorClassification

def ElectronicBandStructureClosed (B : ElectronicBandStructurePackage) : Prop :=
  B.bandGap ∧ B.parabolicDispersion ∧
  B.fermiSurface ∧ B.semiconductorClassification

theorem electronic_band_structure_closed_from_evidence (B : ElectronicBandStructurePackage) (E : ElectronicBandStructureEvidence B) :
    ElectronicBandStructureClosed B := by
  exact And.intro E.bandGapClosed (And.intro E.parabolicDispersionClosed (And.intro E.fermiSurfaceClosed E.semiconductorClassificationClosed))

end HautevilleHouse.MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse