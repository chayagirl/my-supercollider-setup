(
Pdef(\drummy,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pshuf([~patch7], inf),
		\group, ~sources,
		\buf, Place([


			Pshuf([~q1, ~q2, ~d6, ~f9, ~p3, ~d10, ~e2, ~e3], 1).stutter(4),
			Pshuf([~f1, ~q8, ~q16, ~p14].stutter(4), 1)

		], inf),
		\atk, 0,
		\rel, Pshuf([

			0.1

		], inf),

		\amp, Pshuf([

			Pshuf([1, 1, 1, 1, 0, 0, 0, 0], inf),

			Pseq([1, 1, 1, 0], inf),

			Pseq([1, 0, 1, 0, 1, 0, 1, 0], inf),

			Pshuf([1, 1, 1, 1, 1, 1, 0, 0], inf)

		], inf).stutter(2),

		\stretch, 60/~mt,
		\dur, 1/2,

		\rate, Pshuf([1.1, 2.2, 0.3, 0.9, 3/2, 3/4, 4/5, 6/5], inf).stutter(2),
		\pos, 44100*0.1,
		\loop, 0
	);
).stop(quant:60/~mt);
)


~l14.play