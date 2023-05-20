(
Pdef(\dronegenerator,
	Pbind(
		\instrument, Pshuf([

		\bufplaya4

		], inf),
		\patch, Pshuf([~patch4], inf),
		\group, ~sources,
		\buf, Pshuf([


			Prand([~h7], inf),


		], inf).stutter(2),
		\atk, 0,
		\dur, Pwhite(0.1, 1),
		\rel, 60/~mt/(1/Pkey(\dur, inf)),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pgeom(1, 1.1, inf),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(2)
	);
).stop(quant:60/~mt);
)

~a9.play