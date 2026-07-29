import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure DecompositionData (G : Type) [Group G] where
  subgroups : List (Subgroup G)
  semidirectProduct : Bool
  normalSeries : List (Subgroup G)

def decompositionBridge (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem decomposition_bridge_holds (A : AdmissibleClass) : decompositionBridge A :=
  A.gateWitness.elim (fun h => h) (fun h => h)

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse