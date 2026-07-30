import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MaterialsEngineeringElectronicMaterialsEngineeringLemmaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse