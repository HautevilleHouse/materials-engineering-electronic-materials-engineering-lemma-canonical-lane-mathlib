import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure DensityFunctionalTheory where
  hamiltonian : Type u
  electronicPotential : Type v
  exchangeCorrelation : Prop
  groundStateEnergy : Prop
  kohnShamEquations : Prop

def DensityFunctionalTheoryClosed (D : DensityFunctionalTheory) : Prop :=
  D.exchangeCorrelation ∧ D.groundStateEnergy ∧ D.kohnShamEquations

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse