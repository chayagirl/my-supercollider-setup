(
Pdef(\kicker,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch4], inf),
		\group, ~sources,
		\buf, Pshuf([~d11, ~d15, ~d9, ~d8].stutter(32), inf),
		\atk, 0,
		\dur, 1,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+1,

		\amp, Pshuf([

			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 0.5, 0, 1, 1], inf),
			Pshuf([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, ], inf)

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)*Pfunc({f[0]}),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(2)
	);
).play(quant:60/~mt);
)