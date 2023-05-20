(
Pdef(\alfonso,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pshuf([~patch5], inf),
		\group, ~sources,
		\buf, Pshuf([~z1, ~v10, ~z10, ~z4].stutter(2), inf),
		\atk, 0,
		\dur, 2,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+ Pwhite(0, 2),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 1, 0.5], inf).stutter(2),// * Pfunc({f[0]}),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 300,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).play(quant:60/~mt);
)