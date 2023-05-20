~mt = 130;

(
Pdef(\drummy1,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([


			Pshuf([~b1, ~c2, ~d3, ~f4], inf).stutter(4),

			//Pshuf([], inf).stutter(2)

		]),
		\atk, 0,
		\rel, Pshuf([

			Pshuf([0.1, 0.2, 0.25, 0.1, 1, 0.25, 0.1, 0.2], inf),

			Pseq([0.1, 0.25], inf),

			Pshuf([1, 0.2, 0.25, 0.1, 1, 0.25, 0.1, 0.2], inf)

		], inf),

		\amp, Pshuf([

			Pshuf([1, 1, 1, 1, 0, 0, 0, 0], inf),

			Pseq([1, 1, 1, 0], inf),

			Pseq([1, 1, 1, 1, 1, 0, 1, 0], inf),

			Pshuf([1, 1, 1, 1, 1, 1, 0, 0], inf)

		], inf),

		\stretch, 60/~mt,
		\dur, Pseq([2, 1, 2, 1]/6, inf),

		\rate, Pshuf([1.1, 2.2, 0.3, 0.9, 3/2, 3/4, 4/5, 6/5], inf),
		\pos, Pshuf([0, 0.1, 0.11, 0.3, 1, 0.13, 0.12, 0.21]*44100, inf),
		\loop, 0
	);
).stop(quant:60/~mt);
)


~a4.play