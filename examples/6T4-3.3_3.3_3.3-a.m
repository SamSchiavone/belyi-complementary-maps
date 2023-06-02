R<x> := PolynomialRing(QQ);
f := x^3 - 15*x + 22;
fp := x^3 + 1;
E := EllipticCurve(f);
Ep := EllipticCurve(fp);
IsIsogenous(E,Ep);
_, phi := $1;
Degree(phi);
Roots(f,QQ);
