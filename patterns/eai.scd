//eai pdefs

(
Pdef(\eai1,
	Pbind(
		\instrument, Prand([\bufplaya, \bufplaya2, \bufplaya3, \bufplaya4, \bufplaya5, \bufplaya6, \bufplaya7], inf),
		\patch, Pshuf([~patch1, ~patch2, ~patch3, ~patch4, ~patch5, ~patch6], inf),
		\group, ~sources,
		\buf, Pshuf([~a5, ~b4, ~a3, ~b1], inf) ,
		\atk, 0,
		\dur, Pwhite(0.4, 20),
		\rel, 15 + Pwhite(-7, 7), //60/~mt/(1/Pkey(\dur, inf))+0.1,

		\amp, Pshuf([0.1, 0, 0.4, 0.5, 0.1, 0.5, 0.3, 0.3]*2, inf),

		\stretch, 60/~mt,
		\pan, Pwhite(-1, 1),
		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1, 1, 1, 0], inf),
		\arptime, 0.07,
		\impulsetime, Pwhite(0, 1) * 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).play(quant:60/~mt);
)

(
Pdef(\eai2,
	Pbind(
		\instrument, Prand([\bufplaya, \bufplaya2, \bufplaya3, \bufplaya4, \bufplaya5, \bufplaya6, \bufplaya7], inf),
		\patch, Pshuf([~patch1, ~patch2, ~patch3, ~patch4, ~patch5, ~patch6], inf),
		\group, ~sources,
		\buf, Pshuf([~n11, ~a2, ~e20, ~p19, ~p2, ~v15, ~j14, ~g10, ~x5, ~e4, ~t3, ~j13, ~q11, ~r20, ~r2, ~l1], inf) ,
		\atk, 0,
		\dur, Pwhite(0.4, 20),
		\rel, 15 + Pwhite(-7, 7), //60/~mt/(1/Pkey(\dur, inf))+0.1,

		\amp, Pshuf([0.1, 0, 0.4, 0.5, 0.1, 0.5, 0.3, 0.3]*10, inf),

		\stretch, 60/~mt,
		\pan, Pwhite(-1, 1),
		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1, 1, 1, 0], inf),
		\arptime, 0.07,
		\impulsetime, Pwhite(0, 1) * 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);
)