/*
  1) Compute divisors of phi and phi_p
  2) Compare divisors to determine divisor of psi
  3) Use Riemann-Roch spaces to determine basis of functions for numerator and denominator of psi
  4) Use derivative equations to determine coefficients for linear combination of these functions
*/

// Input: Belyi map phi with primitivization phi_p
// Output: Complementary map psi such that phi = phi_p*psi
function ComplementaryMap(phi, phi_p)
  return false;
end function;

// Input: Belyi map phi
// Output: 3 sequences containing the points above 0, 1, oo, together with their ramification indices
function RamificationData(phi)
  D, mults  := Support(Divisor(phi));
  pts0 := [D[i] : i in [1..#D] | mults[i] ge 0];
  mults0 := [el : el in mults | el ge 0];
  ptsoo := [D[i] : i in [1..#D] | mults[i] lt 0];
  multsoo := [el : el in mults | el lt 0];
  D, mults  := Support(Divisor(phi-1));
  pts1 := [D[i] : i in [1..#D] | mults[i] ge 0];
  mults1 := [el : el in mults | el ge 0];
  return [pts0, pts1, ptsoo], [mults0, mults1, multsoo];
end function;
