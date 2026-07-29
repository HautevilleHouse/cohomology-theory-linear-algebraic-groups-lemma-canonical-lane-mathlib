import canonicalLaneMathlib.AdmissibleClass
import CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean.LinearAlgebraicCohomologyLayer

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  nativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

structure RationalRepresentationBridgeState where
  groupObject : LinearAlgebraicGroup ℂ
  cohomologyProfile : GroupCohomologyProfile
  representationClosed : Bool

def rationalRepresentationBridge (S : RationalRepresentationBridgeState) : RationalRepresentationBridgeState :=
  { S with representationClosed := true }

theorem rational_representation_bridge_idempotent (S : RationalRepresentationBridgeState) :
    rationalRepresentationBridge (rationalRepresentationBridge S) = rationalRepresentationBridge S := by
  cases S; rfl

theorem rational_representation_bridge_closed (S : RationalRepresentationBridgeState) :
    (rationalRepresentationBridge S).representationClosed = true := by
  rfl

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse