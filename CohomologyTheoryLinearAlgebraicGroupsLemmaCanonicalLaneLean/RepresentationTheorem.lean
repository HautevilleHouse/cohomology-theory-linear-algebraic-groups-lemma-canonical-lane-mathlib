import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

structure Representation (G : Type) [Group G] (V : Type) [AddCommGroup V] [Module (GroupRing G) V] where
  action : G → (V → V)
  linear : ∀ g, IsLinearMap (action g)

theorem representation_from_admissible_class (A : AdmissibleClass) : Representation (AdmittedTheoremObject.object G) (AdmittedTheoremObject.object V) :=
  by
    have hG : Group (AdmittedTheoremObject.object G) := by
      exact AdmittedTheoremObject.group G A
    have hV : AddCommGroup (AdmittedTheoremObject.object V) := by
      exact AdmittedTheoremObject.addCommGroup V A
    have hMod : Module (GroupRing (AdmittedTheoremObject.object G)) (AdmittedTheoremObject.object V) := by
      exact AdmittedTheoremObject.module G V A
    refine {
      action := λ g v => ?_
      linear := λ g => ?_
    }
    · exact (admissibleAction A g v)
    · exact (admissibleActionLinear A g)

structure UniversalProperty (G : Type) [Group G] where
  initialObject : G
  terminalObject : G
  universalMorphism : G → G

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse