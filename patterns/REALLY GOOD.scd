(
Pdef(\kicker,
	Pbind(
		\instrument, Pshuf([\bufplaya, \bufplaya4, \bufplaya], inf),
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([~i3, ~i4, ~i5, ~g11, ~g20, ~h2, ~h4], inf).stutter(4),
		\atk, 0,
		\dur, 1/2,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+ Prand([0, 0, 0, 0, 0, 0, 0, 0,2], inf) + 0.1,

		\amp, Pshuf([

			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 0.5, 0, 1, 1], inf),
			Pshuf([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, ], inf)

		], inf)*2,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, [0.05, 0.02],
		\impulsetime, 100,// * Pfunc({f[3]}),
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(2)
	);
).stop(quant:60/~mt);
)