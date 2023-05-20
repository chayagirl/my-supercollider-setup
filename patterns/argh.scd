(
Pdef(\streamd,
	Pbind(
		\instrument, \bufplaya4,
		\patch, Pshuf([~patch1, ~patch3, ~patch4, ~patch5], inf).stutter(2),
		\group, ~sources,
		\buf, Pshuf([~a5, ~c6, ~e7, ~e18].stutter(32), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+0.05,

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pwhite(0.99, 1.01)*Pfunc({f[2]}),
		\pos, Pwhite(0, 0.3)*44100,
		\loop, Pshuf([1], inf),
		\arptime, 0.2,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);
)