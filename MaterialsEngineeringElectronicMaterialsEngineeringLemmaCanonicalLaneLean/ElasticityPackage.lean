import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModuli : Type w
  hookesLaw : Prop
  poissonRatio : Prop
  youngModulus : Prop
  shearModulus : Prop
  bulkModulus : Prop
  anisotropyFactor : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  poissonRatioClosed : E.poissonRatio
  youngModulusClosed : E.youngModulus
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  anisotropyFactorClosed : E.anisotropyFactor

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.poissonRatio ∧ E.youngModulus ∧ E.shearModulus ∧ E.bulkModulus ∧ E.anisotropyFactor

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.youngModulusClosed
        (And.intro Ev.shearModulusClosed
          (And.intro Ev.bulkModulusClosed Ev.anisotropyFactorClosed))))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse