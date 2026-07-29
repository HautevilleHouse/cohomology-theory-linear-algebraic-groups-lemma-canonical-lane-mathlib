import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean.CohomologyObjects

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure SubgroupStructure where
  totalGroup : LinearAlgebraicGroup
  subgroup : LinearAlgebraicGroup
  inclusionClosed : Bool

def subgroupLayerClosed (S : SubgroupStructure) : Prop :=
  S.inclusionClosed

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse