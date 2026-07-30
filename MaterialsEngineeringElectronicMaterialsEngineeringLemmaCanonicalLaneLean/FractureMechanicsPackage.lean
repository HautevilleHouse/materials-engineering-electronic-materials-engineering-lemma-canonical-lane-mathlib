import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  criticalStressIntensity : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  stressConcentrationFactor : Prop
  parisLaw : Prop
  fatigueCycle : Prop
  strainEnergyReleaseRate : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  stressConcentrationFactorClosed : F.stressConcentrationFactor
  parisLawClosed : F.parisLaw
  fatigueCycleClosed : F.fatigueCycle
  strainEnergyReleaseRateClosed : F.strainEnergyReleaseRate

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.criticalStressIntensity ∧ F.fractureToughness ∧ F.crackPropagation ∧
  F.stressConcentrationFactor ∧ F.parisLaw ∧ F.fatigueCycle ∧ F.strainEnergyReleaseRate

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.criticalStressIntensityClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackPropagationClosed
        (And.intro E.stressConcentrationFactorClosed
          (And.intro E.parisLawClosed
            (And.intro E.fatigueCycleClosed E.strainEnergyReleaseRateClosed)))))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse