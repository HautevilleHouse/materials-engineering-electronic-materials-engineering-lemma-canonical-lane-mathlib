import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure ElectronicBandStructure where
  lattice : Type u
  reciprocalLattice : Type v
  brillouinZone : TopologicalSpace.Type?
  dispersionRelation : Type w
  energyBands : Type x
  symmetryProperties : Prop
  bandGapInfo : Prop

def ElectronicBandStructureClosed (E : ElectronicBandStructure) : Prop :=
  E.symmetryProperties ∧ E.bandGapInfo

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse