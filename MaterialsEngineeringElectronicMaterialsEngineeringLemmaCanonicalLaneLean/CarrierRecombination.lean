import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure CarrierRecombination where
  radiativeRecombination : Prop
  augerRecombination : Prop
  srHRecombination : Prop
  recombinationRate : Prop
  lifetimeExpression : Prop

def CarrierRecombinationClosed (R : CarrierRecombination) : Prop :=
  R.radiativeRecombination ∧ R.augerRecombination ∧ R.srHRecombination ∧ R.recombinationRate ∧ R.lifetimeExpression

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse