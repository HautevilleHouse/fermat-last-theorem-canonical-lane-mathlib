import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure FermatEquation (n : ℕ) where
  a : ℤ
  b : ℤ
  c : ℤ
  exponent : n
  nontrivial : a ≠ 0 ∧ b ≠ 0 ∧ c ≠ 0
  equation : a^n + b^n = c^n

structure FermatAdmittedObject where
  exponent : ℕ
  exponentGreaterThanTwo : exponent > 2
  equation : FermatEquation exponent
  conclusion : ¬ ∃ (a b c : ℤ), a ≠ 0 ∧ b ≠ 0 ∧ c ≠ 0 ∧ a^exponent + b^exponent = c^exponent

def FermatWitnessClosed (O : FermatAdmittedObject) : Prop :=
  O.conclusion

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse