(
Pdef(\repeat1,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pseq([~patch1].stutter(1), inf),
		\group, ~sources,
		\buf, Pseq([~a2, ~d16, ~a14, ~d15].stutter(4), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf)),
		\amp, Pshuf(([

			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1
		]), inf),
		\stretch, 60/~mt,
		\rate, 1,
		\pos, 44100*0
	);
).stop(quant:60/~mt);
)
.
(
Pdef(\repeat2,
	Pbind(
		\instrument, \bufplaya2,
		\patch, Pseq([~patch3].stutter(4), inf),
		\group, ~sources,
		\buf, Pseq([~d18, ~a20, ~b1, ~c1].stutter(2), inf),
		\atk, 0,
		\dur, 6,
		\rel, 60/~mt/(1/Pkey(\dur, inf)),
		\amp, Pshuf(([
			1, 1, 1, 1
		]), inf),
		\stretch, 60/~mt,
		\rate, Pshuf(([1, 2, 3, 4]).stutter(2), inf).trace,
		\pos, 44100*0
	);
).play(quant:60/~mt);
)

