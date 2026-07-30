import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  fractureToughness : Type w
  crackPropagationCriterion : Prop
  energyReleaseRate : Prop
  parisLaw : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  energyReleaseRateClosed : F.energyReleaseRate
  parisLawClosed : F.parisLaw

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.energyReleaseRate ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (Ev : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro Ev.crackPropagationCriterionClosed (And.intro Ev.energyReleaseRateClosed Ev.parisLawClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
