import Mathlib

open scoped Nat
open BigOperators

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

/-- Teorema de Taylor multivariado en forma integral[cite: 1] -/
theorem frechet_taylor_integral
  {U : Set E} {f : E → F} {n : ℕ} (hn : 0 < n)
  (hCn : ContDiffOn ℝ n f U) (hU : IsOpen U)
  {x h : E} (hseg : Set.Icc (0 : ℝ) 1 ⊆ {s | x + s • h ∈ U}) :
  f (x + h) =
    (∑ k in Finset.range n, ((k! : ℝ)⁻¹) • iteratedFDeriv ℝ k f x (fun _ => h)) +
    ((n - 1)! : ℝ)⁻¹ • ∫ s in (0 : ℝ)..1,
    (1 - s)^(n - 1) • iteratedFDeriv ℝ n f (x + s • h) (fun _ => h) := by
  sorry
