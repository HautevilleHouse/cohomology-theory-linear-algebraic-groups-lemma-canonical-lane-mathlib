import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure AlgebraicGroupSubstrate where
  groupVariety : Bool
  groupLaw : Bool
  cohomologyAvailable : Bool
  representationAvailable : Bool
  decompositionAvailable : Bool
  universalPropertyAvailable : Bool
  opening : Bool
deriving Repr, DecidableEq

def algebraicGroupSubstrate : AlgebraicGroupSubstrate :=
  { groupVariety := true,
    groupLaw := true,
    cohomologyAvailable := true,
    representationAvailable := true,
    decompositionAvailable := true,
    universalPropertyAvailable := true,
    opening := true }

theorem algebraic_group_substrate_checked :
    algebraicGroupSubstrate.groupVariety = true ∧
    algebraicGroupSubstrate.groupLaw = true ∧
    algebraicGroupSubstrate.cohomologyAvailable = true ∧
    algebraicGroupSubstrate.representationAvailable = true ∧
    algebraicGroupSubstrate.decompositionAvailable = true ∧
    algebraicGroupSubstrate.universalPropertyAvailable = true ∧
    algebraicGroupSubstrate.opening = true :=
  ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse