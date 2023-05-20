(
Pdef(\repeat1,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pseq([~patch2].stutter(1), inf),
		\group, ~sources,
		\buf, Pshuf([~g12, ~q15, ~c17, ~q5, ~k19, ~e6, ~j2, ~g5, ~t6, ~c7, ~v16, ~i10, ~v14, ~m7, ~o19, ~d3], inf),
		\atk, 0,
		\dur, 1,
		\rel, 1,
		\amp, Pshuf(([

			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1
		])*2, inf),
		\stretch, 60/~mt,
		\rate, Pshuf([1, 0.5, 0.25], inf),
		\pos, 44100*0,
		\loop, 0
	);
).stop(quant:60/~mt);
)
.
(
Pdef(\repeat2,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pseq([~patch2].stutter(4), inf),
		\group, ~sources,
		\buf, Pshuf([~p1, ~p3, ~p5, ~r12], inf).stutter(4),
		\atk, 0,
		\dur, 1/2,
		\rel, 60/~mt/(1/Pkey(\dur, inf)),
		\amp, Pshuf(([
			1, 1, 1, 1
		]), inf),
		\stretch, 60/~mt,
		\rate, Pshuf(([1, 2, 3, 4]).stutter(2), inf).trace,
		\loop, 0,

		\pos, 44100*0
	);
).stop(quant:60/~mt);
)

