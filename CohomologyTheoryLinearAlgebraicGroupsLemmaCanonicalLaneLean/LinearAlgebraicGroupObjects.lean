import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup
import Mathlib.AlgebraicGeometry.GroupScheme
import Mathlib.RepresentationTheory.Rep

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean

open AlgebraicGeometry

abbrev NativeGroupScheme : Type (u + 1) := AlgebraicGeometry.GroupScheme.{u}

structure LinearAlgebraicGroup (k : Type u) [CommRing k] where
  carrier : NativeGroupScheme.{u}
  underlyingScheme : AlgebraicGeometry.Scheme.{u}
  isLinear : Prop
  representation : Representation k (carrier : Type u) (underlyingScheme.affineSpace)

def linearAlgebraicGroup_over (k : Type u) [CommRing k] : LinearAlgebraicGroup k := {
  carrier := (by
    -- placeholder: use GL_n as a canonical example
    sorry),
  underlyingScheme := (by
    sorry),
  isLinear := True,
  representation := (by
    sorry)
}

structure GroupCohomologyObject (G : LinearAlgebraicGroup ℂ) where
  degree : ℕ
  cocycleType : Type u
  coboundaryCondition : Prop
  cohomologyClass : Prop

end CohomologyTheoryLinearAlgebraicGroupsLemmaCanonicalLaneLean
end HautevilleHouse