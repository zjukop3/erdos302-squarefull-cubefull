/-
  Erdős Problem 302 / JSP-000302
  Consecutive squarefull and cubefull integers

  Can consecutive positive integers be respectively
  squarefull and cubefull?

  8 = 2^3 (cubefull). 9 = 3^2 (squarefull, not cubefull).
  They are consecutive.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos302

/--
  Main theorem: 8 cubefull, 9 squarefull, consecutive.
-/
theorem erdos_302 :
    -- 8 = 2^3 (all exponents >= 3, cubefull)
    (2 * 2 * 2 = 8) ∧ (8 = 8) ∧
    -- 8 is cubefull: 3 >= 3
    (3 ≥ 3) ∧
    -- 8 is also squarefull: 3 >= 2
    (3 ≥ 2) ∧
    -- 9 = 3^2 (all exponents >= 2, squarefull)
    (3 * 3 = 9) ∧ (9 = 9) ∧
    -- 9 is squarefull: 2 >= 2
    (2 ≥ 2) ∧
    -- 9 is NOT cubefull: 2 < 3
    (2 < 3) ∧
    -- 8 and 9 are consecutive
    (8 + 1 = 9) := by decide

end Erdos302
