//: Impulse response:The waveform that results at the output of a device when the input is excited by a unit impulse.

//:Often there are several ways in which determining the frequency response of this difference equation can be approached. For example, with x[n]=ejωn, y[n] will be of the same form but scaled by the frequency response. Consequently substitution into the difference equation will result in a linear equation to be solved for the frequency response.
//:nonrecursive
//:In signal processing, a finite impulse response (FIR) filter is a filter whose impulse response (or response to any finite length input) is of finite duration, because it settles to zero in finite time. This is in contrast to infinite impulse response (IIR) filters, which may have internal feedback and may continue to respond indefinitely (usually decaying).

//:An FIR filter has a number of useful properties which sometimes make it preferable to an infinite impulse response (IIR) filter. FIR filters:
//:Require no feedback. This means that any rounding errors are not compounded by summed iterations. The same relative error occurs in each calculation. This also makes implementation simpler.
//:Are inherently stable, since the output is a sum of a finite number of finite multiples of the input values, so can be no greater than {\displaystyle \scriptstyle \sum |b_{i}|} \scriptstyle \sum |b_i| times the largest value appearing in the input.
//:Can easily be designed to be linear phase by making the coefficient sequence symmetric. This property is sometimes desired for phase-sensitive applications, for example data communications, seismology, crossover filters, and mastering.


import UIKit
import Accelerate

//impulse reponse

var x=[Double](repeating:0.0, count:10)
var y=[Double](repeating:0.0, count:10)

x[0]=1.0//implse of 1


for n in (0..<10){
    
    if n>0{
        y[n]=y[n]-0.5*y[n-1]+x[n] //difference equation
        print("y[\(n)]=\(y[n])")
        
    }
    else{
        y[n]=x[n]
        print("y[\(n)]=\(y[n])")
    }
    
}

print("impulse response y=\(y)")
print("impulse x=\(x)")

