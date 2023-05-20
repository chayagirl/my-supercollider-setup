~mt = 145


(
Pdef(\fundrum,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pshuf([~patch7], inf),
		\group, ~sources,
		\buf, Place([

			Pshuf([~a1, ~a2, ~a3, ~d8].stutter(4), 1),

			Pshuf([~f1, ~f2, ~f5, ~d8], 1).stutter(4)

		], inf),




		\atk, 0,
		\rel, 60/~mt/(1/Pkey(\dur, inf)),

		\amp, Pshuf([

			Pseq([0, 0, 0, 1, 0, 0, 0, 1], inf),

			Pseq([1, 1, 1, 1, 1, 1, 1, 0], inf),

			Pshuf([1, 1, 1, 1, 0, 1, 0, 0], inf),


		], inf),

		\stretch, 60/~mt,
		\dur, 10,
		\rate, Pshuf([0.4, 0.6, 5/4, 4/5, 6/7, 1]*20, inf),
		\pos, 44100*0,
		\loop, 1
	);
).play(quant:60/~mt);
)

~f5.play