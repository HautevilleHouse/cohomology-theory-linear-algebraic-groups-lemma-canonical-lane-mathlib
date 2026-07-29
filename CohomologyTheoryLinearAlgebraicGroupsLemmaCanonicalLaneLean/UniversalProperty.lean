import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean.CohomologyObjects

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure UniversalProperty where
  group : LinearAlgebraicGroup
  propertyType : String
  satisfied : Bool

def universalPropertyClosed (U : UniversalProperty) : Prop :=
  U.satisfied

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse