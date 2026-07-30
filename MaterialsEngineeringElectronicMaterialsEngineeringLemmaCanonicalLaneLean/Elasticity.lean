import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModuli : Type w
  hookesLaw : Prop
  isotropicConstants : Prop
  anisotropy : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  isotropicConstantsClosed : E.isotropicConstants
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.isotropicConstants ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.isotropicConstantsClosed Ev.yieldCriterionClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
