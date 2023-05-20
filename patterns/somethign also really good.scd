(
Pdef(\kicker2,
	Pbind(
		\instrument, Prand([\bufplaya], inf),
		\patch, Pshuf([~patch3], inf),
		\group, ~sources,
		\buf, Pshuf([~h20, ~c12, ~c17, ~a1, ~i1, ~c6, ~d17, ~i3, ~e1, ~a2, ~h4, ~c12, ~g3, ~c3, ~d4, ~e11], inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf)),

		\amp, Pshuf([

			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 0.5, 0, 1, 1], inf),
			Pshuf([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, ], inf)

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4),
		\pos, 44100*Pwhite(0, 0.3),
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 50, //Pfunc({f[0]}) * 50,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(2)
	);
).stop(quant:60/~mt);
)

~mt = 160

~a1.play