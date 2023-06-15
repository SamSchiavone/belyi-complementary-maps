
// Belyi maps downloaded from the LMFDB on 15 June 2023.
// Magma code for Belyi map with label 4T3-4_2.2_2.1.1-a


// Group theoretic data

d := 4;
i := 3;
G := TransitiveGroup(d,i);
sigmas := [[Sym(4) | [2, 3, 4, 1], [2, 1, 4, 3], [3, 2, 1, 4]]];
embeddings := [ComplexField(15)![1.0, 0.0]];

// Geometric data

// Define the base field
K<nu> := RationalsAsNumberField();
// Define the curve
X := Curve(ProjectiveSpace(PolynomialRing(K, 2)));
// Define the map
KX<x> := FunctionField(X);
phi := -1/4/(x^4-x^2);

load "~/github/primitive-belyi-maps/code/primitivize.m";
load "~/github/belyi-complementary-maps/complementary-map.m";
sigma_p := Primitivize(sigma);
phi_p := -1/(x^2-1); // look this up in the LMFDB?
pts, mults := RamificationData(phi);
pts_p, mults_p := RamificationData(phi_p);

/*
d := 4;
i := 3;
G := TransitiveGroup(d,i);
sigmas := [[Sym(4) | [2, 3, 4, 1], [2, 1, 4, 3], [3, 2, 1, 4]]];
embeddings := [ComplexField(15)![1.0, 0.0]];
// Geometric data
// Define the base field
K<nu> := RationalsAsNumberField();
// Define the curve
X := Curve(ProjectiveSpace(PolynomialRing(K, 2)));
// Define the map
KX<x> := FunctionField(X);
phi := -1/4/(x^4-x^2);
AttachSpec("~/github/primitive-belyi-maps/spec");
load "~/github/primitive-belyi-maps/code/primitivization.m";
load "~/github/primitive-belyi-maps/code/primitivize.m";
sigmas;
sigma := sigmas[1];
sigma;
Primitivize(sigma);
sigma_p := $1;
KX;
AttachSpec("~/github/Belyi/Code/spec");
phi_p := -1/(x^2-1);
div_phi := Divisor(phi);
Support(Divisor(phi));
Support(Divisor(phi-1));
D, mults := Support(Divisor(phi));
D;
[el[i] : i in [1..#D] | mults[i] ge 0];
[D[i] : i in [1..#D] | mults[i] ge 0];
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
phi;
RamificationData(phi);
sigma;
pts, mults := RamificationData(phi);
pts_p, mults_p := RamificationData(phi_p);
pts, mults;
pts_p, mults_;
pts_p, mults_p;
pts, mults;
pts_p, mults_p;
pts[2];
Degree($1[1]);
pts0
pts[1];
pts_p;
pts[1];
pts_p[1];
mults[1];
mults_p[1];
pts, mults;
pts_p, mults_p;
pts[1];
pts[2];
pts_p[3];
pts[3];
pts_p[3], mults_p[3];
pts[3], mults[3];
phi;
phi_p;
*/
