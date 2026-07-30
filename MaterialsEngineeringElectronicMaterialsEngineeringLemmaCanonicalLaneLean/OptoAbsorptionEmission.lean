import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure OptoPackage where
  absorptionCoefficient : ℝ
  refractiveIndex : ℝ
  photoluminescenceQuantumYield : ℝ
  excitonBindingEnergy : ℝ

structure OptoEvidence (O : OptoPackage) where
  absorptionCoefficientPositive : O.absorptionCoefficient > 0
  refractiveIndexPositive : O.refractiveIndex > 1
  quantumYieldClosed : O.photoluminescenceQuantumYield ≥ 0 ∧ O.photoluminescenceQuantumYield ≤ 1

def OptoClosed (O : OptoPackage) : Prop :=
  O.absorptionCoefficient > 0 ∧ O.refractiveIndex > 1 ∧ (O.photoluminescenceQuantumYield ≥ 0 ∧ O.photoluminescenceQuantumYield ≤ 1)

theorem opto_closed_from_evidence (O : OptoPackage) (E : OptoEvidence O) : OptoClosed O := by
  exact And.intro E.absorptionCoefficientPositive (And.intro E.refractiveIndexPositive E.quantumYieldClosed)

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
