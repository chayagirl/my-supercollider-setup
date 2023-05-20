(
Pdef(\pinger,
	Pbind(
		\instrument, Pshuf([
			Pseq([\bufplaya], inf)
		]),
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Place([

			Pshuf([~f1, ~f20, ~h3, ~h5], 1).stutter(2),


		], inf),
		\atk, 0,
		\rel, Pwhite(0.3, 0.7),

		\amp, Pshuf([

			Pshuf([1, 1, 1, 1, 0, 0, 0, 0], inf),

			Pseq([1, 1, 1, 0], inf),

			Pseq([1, 0, 1, 0, 1, 0, 1, 0], inf),

			Pshuf([
				1, 1, 1, 1, 1, 1, 0, 0,
				1, 1, 1, 1, 1, 1, 0, 0
			], inf)

		], inf),

		\stretch, 60/~mt,
		\dur, 1/4,

		\rate, Pshuf([1.1, 2.2, 0.3, 0.9, 3/2, 3/4, 4/5, 6/5], inf),
		\pos, 44100*0,
		\loop, 1
	);
).play(quant:60/~mt);
)
