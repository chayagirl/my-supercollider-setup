(
Pdef(\drummy,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Place([


			Pshuf([~g11, ~g18, ~j6, ~j4], inf),
			Pshuf([~f11, ~f2, ~e3, ~c4, ~l15, ~r16, ~p17, ~q18].stutter(2), inf)

		], inf).stutter(4),
		\atk, 0,
		\rel, Place([

			Pshuf([0.4, 0.32, 0.5, 0.7, 2, 0.5, 0.2, 0.1], inf),

			Pseq([0.4, 0.32, 0.5, 0.7], inf),

			Pseq([Pseries(1, 0.7, 8)].stutter(2), inf)

		], inf)*2,

		\amp, Pshuf([

			Pshuf([1, 1, 1, 1, 0, 0, 0, 0], inf),

			Pseq([1, 1, 1, 0], inf),

			Pshuf([1, 0, 1, 0, 1, 0, 1, 0], inf),

			Pshuf([1, 1, 1, 1, 1, 1, 0, 0], inf)

		], inf),

		\stretch, 60/~mt,
		\dur, 1/2,

		\rate, Pshuf([1.1, 2.2, 0.3, 0.9, 3/2, 3/4, 4/5, 6/5], inf).stutter(2),
		\pos, 44100*0.1,
		\loop, 0
	);
).play(quant:60/~mt);
)


