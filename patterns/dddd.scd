~mt = 160;

Synth.new(\bufplaya, [\buf, ~c8, \patch, ~patch1]);

(
Pdef(\letsgo,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pseq([~patch1, ~patch5], inf),
		\group, ~sources,
		\buf,
		Pshuf([~d9, ~k16, ~u2, ~a10, ~s4, ~k12, ~k15, ~l4, ~i7, ~g19, ~n5, ~s16, ~m10, ~h13, ~f6, ~f18], inf)
		,
		\atk, 0,
		\rel, Pshuf([0.5, 0.3, 0.2, 1], inf)*5,
		\amp, Pshuf([
			Pseq([

				1, 1, 0, 1, 1, 1, 0, 1
			]),
			Pseq([
				1, 0, 1, 0, 1, 1, 0, 1
			]),
			Pseq([
				1, 1, 0, 1, 0, 1, 0, 1
			]),
			Pseq([
				1, 1, 1, 1, 0, 1, 0, 1
			])
		], inf),
		\stretch, 60/~mt,
		\dur, Pseq([
			1/4
		], inf),
		\rate, Pshuf([1, 2, 3, 0.5, 0.4, 0.1, 0.4], inf),
		\pos, 44100*0,
		\loop, 1
	);
).stop(quant:60/~mt);
)

(
Pdef(\letsgo2,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pseq([~patch2], inf),
		\group, ~sources,
		\buf, Pshuf([~a2, ~j3, ~j5, ~j3, ~j4, ~j2, ~j5, ~p4], inf).stutter(2) ,
		\atk, 0,
		\rel, Pseq([0.5, 0.3, 0.2, 1]*4, inf),
		\amp, Pshuf(([
			Pseq([
				1, 1, 1, 1, 1, 1, 0, 1
			]),
			Pseq([
				1, 0, 1, 0, 1, 1, 0, 1
			]),
			Pseq([
				1, 1, 0, 1, 1, 1, 0, 1
			]),
			Pseq([
				1, 1, 1, 1, 0, 1, 0, 1
			])
	]*1.3), inf),
		\stretch, 60/~mt,
		\dur, 1/4,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).trace,
		\pos, 44100*0
	);
).stop(quant:60/~mt);
)

(
Pdef(\letsgo2,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch3, ~patch4].stutter(4).reverse, inf),
		\group, ~sources,
		\buf, Pshuf([~p5, ~c17, ~h20, ~t12, ~w1, ~e16, ~p12, ~r7, ~k12, ~g14, ~j20, ~e9, ~v12, ~e11, ~c18, ~j19], inf) ,
		\atk, 0,
		\rel, 3,
		\amp, Pshuf(([
			1, 1, 1, 1, 1, 1, 1, 1
		]*0.1), inf),
		\stretch, 60/~mt,
		\dur, 1/4,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).trace,
		\pos, 44100*0
	);
).stop(quant:60/~mt);
)

(
Pdef(\letsgo4,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pseq([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([~o16, ~d13, ~v10, ~s10, ~m12, ~b9, ~e20, ~a15, ~h17, ~j13, ~j18, ~u13, ~e11, ~i2, ~o20, ~q8], inf).stutter() ,
		\atk, 0,
		\rel, 1.5,
		\amp, 1.5,
		\dur, 1/4,
		\rate, 2,
		\pos, 44100*0,
		\stretch, 60/~mt,

	);
).stop(quant:60/~mt);
)


(
Pdef(\letsgo5,
	Pbind(
		\instrument, \bufplaya6,
		\patch, Pshuf([~patch2, ~patch5].stutter(2).reverse, inf),
		\group, ~sources,
		\buf, Pshuf([~n14, ~r10, ~q5, ~w10, ~s6, ~g15, ~m9, ~x5, ~k16, ~m17, ~q17, ~m3, ~m1, ~n9, ~j16, ~a5], inf) ,
		\atk, 0,
		\rel, 0.5,
		\amp, Pshuf(([
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1
		]*1.5), inf),
		\stretch, 60/~mt,
		\dur, 1/2,
		\rate, Pseq([1, 0.3], inf).trace,
		\pos, 44100*0
	);
).stop(quant:60/~mt);
)


(
Pdef(\letsgo6,
	Pbind(
		\instrument, \bufplaya7,
		\patch, Pshuf([~patch7, ~patch1].stutter(2).reverse, inf),
		\group, ~sources,
		\buf, Pshuf([~l8, ~r2, ~n7, ~e4, ~s6, ~c2, ~k10, ~v11, ~n15, ~g19, ~i11, ~q14, ~s2, ~s2, ~s8, ~d8], inf).stutter(4) ,
		\atk, 0,
		\rel, 0.2,
		\amp, Pshuf(([
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1
		]*1), inf),
		\stretch, 60/~mt,
		\dur, 1/4,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).trace,
		\pos, 44100*0
	);
).play(quant:60/~mt);
)

(
Pdef(\letsgo7,
	Pbind(
		\instrument, \bufplaya8,
		\patch, Pshuf([~patch3].stutter(2).reverse, inf),
		\group, ~sources,
		\buf, Pshuf([~d9, ~d8, ~d7, ~d5].stutter(4), inf),
		\atk, 0,
		\rel, 0.7,
		\amp, Pshuf(([
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1
		]*1), inf),
		\stretch, 60/~mt,
		\dur, 2,
		\rate, Pseq([1, 0.3], inf),
		\pos, 44100*0
	);
).play(quant:60/~mt);
)

(
Pdef(\letsgo8,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1].stutter(2).reverse, inf),
		\group, ~sources,
		\buf, Pshuf([~a12, ~f20, ~c19, ~d2].stutter(4), inf),
		\atk, 0,
		\rel, 7,
		\amp, Pshuf(([
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 1, 1, 0, 1,
			1, 1, 1, 1, 0, 1, 0, 1
		]*1), inf),
		\stretch, 60/~mt,
		\dur, 1,
		\rate, Pseq([1], inf),
		\pos, 44100*0
	);
).play(quant:60/~mt);
)