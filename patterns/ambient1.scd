(
Pdef(\ambient1,
	Pbind(
		\instrument, Prand([\bufplaya3], inf),
		\patch, Pshuf([~patch4, ~patch5, ~patch6], inf),
		\group, ~sources,
		\buf, Pshuf([
			Pshuf([~e2, ~e4, ~d3, ~c16, ~c6], inf).stutter(4),

			Pshuf([~a5, ~c6, ~b7, ~e8], inf),



		].stutter(4), inf),
		\atk, 0,
		\dur, Pwhite(2, 4, inf),
		\rel, 0.5,

		\amp, Pshuf([

			Pshuf([0, 0, 0, 0, 0, 1, 1, 1], inf),
			Pshuf([0, 0, 0, 0, 1, 1, 1, 1], inf),

			Pshuf([0, 0, 0, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 0, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 1, 1, 1, 1], inf),

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 3, 2, 2], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);
)


(
Pdef(\ambient2,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pshuf([~patch5], inf),
		\group, ~sources,
		\buf, Pshuf([
			Pshuf([~r9, ~p2, ~q3, ~g4], inf),

			Pshuf([~f5, ~g6, ~c7, ~e8], inf),



		].stutter(8), inf),
		\atk, 0,
		\dur, Pwhite(1, 5, inf),
		\rel, 3,

		\amp, Pshuf([

			Pshuf([0, 0, 0, 0, 0, 1, 1, 1], inf),
			Pshuf([0, 0, 0, 0, 1, 1, 1, 1], inf),
			Pshuf([0, 0, 0, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 0, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 1, 1, 1, 1], inf),

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 3, 2, 2], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);
)

(
Pdef(\ambient3,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pshuf([~patch5], inf),
		\group, ~sources,
		\buf, Pshuf([~g1].stutter(8), inf),
		\atk, Pwhite(0.5, 3, inf),
		\dur, 1,
		\rel, 7,

		\amp, Pshuf([

			Pshuf([0, 0, 0, 0, 0, 1, 1, 1], inf),
			Pshuf([0, 0, 0, 0, 1, 1, 1, 1], inf),
			Pshuf([0, 0, 0, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 0, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 1, 1, 1, 1], inf),

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 3, 2, 2], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/4, inf).stutter(4)
	);
).play(quant:60/~mt);
)
