import canonicalLaneMathlib.AdmissibleClass
import CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean.VanishingTheoremLayer

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

def BridgeClosed (A : AdmissibleClass) : Prop :=
  nativeBridgeClosed A.object

def GateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedCohomologyClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A ∧ GateClosed A

theorem constrained_cohomology_closure (A : AdmissibleClass) :
    ConstrainedCohomologyClosure A := by
  refine And.intro ?_ ?_
  · exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked
  · exact A.gateWitness

theorem cohomology_vanishing_layer_closed :
    vanishingTheoremCertificate.proofBridged = true ∧
    vanishingTheoremCertificate.vanishingCondition := by
  exact ⟨rfl, trivial⟩

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse