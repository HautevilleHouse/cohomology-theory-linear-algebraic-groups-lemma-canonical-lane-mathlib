import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure CohomologyGroup (G : Type) [Group G] (n : ℕ) where
  group : G
  degree : ℕ

structure LinearAlgebraicGroup (k : Type) [Field k] where
  underlyingVariety : Type
  groupLaw : Group (underlyingVariety → k)

structure GroupCohomologyData (G : Type) [Group G] (A : Type) [AddCommGroup A] [Module (GroupRing G) A] where
  cocycles : Set (G → A)
  coboundaries : Set (G → A)
  cohomologyGroup : AddCommGroup (cocycles / coboundaries)

def cohomologyClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse