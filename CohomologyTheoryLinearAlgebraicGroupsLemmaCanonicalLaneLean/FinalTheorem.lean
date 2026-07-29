import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse