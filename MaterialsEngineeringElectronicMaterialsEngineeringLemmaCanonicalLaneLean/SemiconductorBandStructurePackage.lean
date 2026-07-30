import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean

structure SemiconductorBandStructurePackage where
  bandGap : Prop
  effectiveMass : Prop
  densityOfStates : Prop
  fermiLevel : Prop
  carrierConcentration : Prop
  mobility : Prop
  dopingProfile : Prop
  heterojunctionOffset : Prop

structure SemiconductorBandStructureEvidence (S : SemiconductorBandStructurePackage) where
  bandGapClosed : S.bandGap
  effectiveMassClosed : S.effectiveMass
  densityOfStatesClosed : S.densityOfStates
  fermiLevelClosed : S.fermiLevel
  carrierConcentrationClosed : S.carrierConcentration
  mobilityClosed : S.mobility
  dopingProfileClosed : S.dopingProfile
  heterojunctionOffsetClosed : S.heterojunctionOffset

def SemiconductorBandStructureClosed (S : SemiconductorBandStructurePackage) : Prop :=
  S.bandGap ∧ S.effectiveMass ∧ S.densityOfStates ∧ S.fermiLevel ∧
  S.carrierConcentration ∧ S.mobility ∧ S.dopingProfile ∧ S.heterojunctionOffset

theorem semiconductor_band_structure_closed_from_evidence (S : SemiconductorBandStructurePackage) (E : SemiconductorBandStructureEvidence S) :
    SemiconductorBandStructureClosed S := by
  exact And.intro E.bandGapClosed
    (And.intro E.effectiveMassClosed
      (And.intro E.densityOfStatesClosed
        (And.intro E.fermiLevelClosed
          (And.intro E.carrierConcentrationClosed
            (And.intro E.mobilityClosed
              (And.intro E.dopingProfileClosed E.heterojunctionOffsetClosed))))))

end MaterialsEngineeringElectronicMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse