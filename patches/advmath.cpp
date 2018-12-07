#include "pxtbase.h"

using namespace std;

#define SINGLE(op) return fromDouble(::op(toDouble(x)));

namespace Math_ {
#ifdef NOTUSED  ////  TODO: Reduce ROM size
//%
TNumber log2(TNumber x){SINGLE(log2)}
//%
TNumber exp(TNumber x){SINGLE(exp)}
//%
TNumber tanh(TNumber x){SINGLE(tanh)}
//%
TNumber sinh(TNumber x){SINGLE(sinh)}
//%
TNumber cosh(TNumber x){SINGLE(cosh)}
//%
TNumber atanh(TNumber x){SINGLE(atanh)}
//%
TNumber asinh(TNumber x){SINGLE(asinh)}
//%
TNumber acosh(TNumber x){SINGLE(acosh)}
#else
//%
TNumber log2(TNumber x){return (TNumber) -1;}
//%
TNumber exp(TNumber x){return (TNumber) -1;}
//%
TNumber tanh(TNumber x){return (TNumber) -1;}
//%
TNumber sinh(TNumber x){return (TNumber) -1;}
//%
TNumber cosh(TNumber x){return (TNumber) -1;}
//%
TNumber atanh(TNumber x){return (TNumber) -1;}
//%
TNumber asinh(TNumber x){return (TNumber) -1;}
//%
TNumber acosh(TNumber x){return (TNumber) -1;}
#endif  //  NOTUSED
}