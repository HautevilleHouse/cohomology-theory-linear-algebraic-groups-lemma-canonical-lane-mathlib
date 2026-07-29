import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean.CohomologyObjects

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure CohomologicalInterpretation where
  group : LinearAlgebraicGroup
  degree : ℕ
  interpretation : String
  isAdmissible : Bool

def cohomologyLayerClosed (I : CohomologicalInterpretation) : Prop :=
  I.isAdmissible

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse