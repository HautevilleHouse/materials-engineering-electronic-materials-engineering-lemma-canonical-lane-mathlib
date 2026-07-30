import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure DefectChemistryPackage where
  vacancyConcentration : Prop
  interstitialConcentration : Prop
  substitutionalConcentration : Prop
  defectFormationEnergy : Prop
  diffusionCoefficient : Prop
  chargeState : Prop
  deepLevelTransientSpectroscopy : Prop

structure DefectChemistryEvidence (D : DefectChemistryPackage) where
  vacancyConcentrationClosed : D.vacancyConcentration
  interstitialConcentrationClosed : D.interstitialConcentration
  substitutionalConcentrationClosed : D.substitutionalConcentration
  defectFormationEnergyClosed : D.defectFormationEnergy
  diffusionCoefficientClosed : D.diffusionCoefficient
  chargeStateClosed : D.chargeState
  deepLevelTransientSpectroscopyClosed : D.deepLevelTransientSpectroscopy

def DefectChemistryClosed (D : DefectChemistryPackage) : Prop :=
  D.vacancyConcentration ∧ D.interstitialConcentration ∧ D.substitutionalConcentration ∧
  D.defectFormationEnergy ∧ D.diffusionCoefficient ∧ D.chargeState ∧ D.deepLevelTransientSpectroscopy

theorem defect_chemistry_closed_from_evidence (D : DefectChemistryPackage) (E : DefectChemistryEvidence D) :
    DefectChemistryClosed D := by
  exact And.intro E.vacancyConcentrationClosed
    (And.intro E.interstitialConcentrationClosed
      (And.intro E.substitutionalConcentrationClosed
        (And.intro E.defectFormationEnergyClosed
          (And.intro E.diffusionCoefficientClosed
            (And.intro E.chargeStateClosed E.deepLevelTransientSpectroscopyClosed)))))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse