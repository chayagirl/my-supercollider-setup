~mt = 140

(
Pdef(\drill1,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch4], inf),
		\group, ~sources,
		\buf, Pseq([~a1, ~b1, ~c1, ~s1].stutter(3), inf) ,
		\atk, 0,
		\dur, Pwhite(0.1, 1),
		\rel, 60/~mt/(1/Pkey(\dur, inf))+Pshuf([
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.2),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1)
		], inf),

		\amp, Pshuf([
			Pseq([
				1, 0, 0, 1, 0, 1, 0, 0
			], inf),

			Pseq([
				1, 0, 0, 1, 0, 0, 1, 0
			], inf),

			Pseq([
				1, 0, 0, 0, 1, 0, 0, 0,
				1, 0, 0, 1, 0, 0, 1, 0
			], inf)
		], inf)*10,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 2, 3, 4], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).play(quant:60/~mt);
)

(
Pdef(\drill2,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1, ~patch2], inf),
		\group, ~sources,
		\buf, Pshuf([

			Pshuf([~g12, ~q15, ~c17, ~q5, ~k19, ~e6, ~j2, ~g5, ~t6, ~c7, ~v16, ~i10, ~v14, ~m7, ~o19, ~d3], inf),

		].stutter(2), inf),
		\atk, 0,
		\dur, 1,
		\rel, Pshuf([

			Pwhite(0.3, 0.6),
			Pwhite(0.3, 0.6),
			Pwhite(0.3, 0.6),
			Pwhite(0.3, 0.6),
			Pwhite(0.3, 0.6),
			Pwhite(0.3, 0.6),
			Pwhite(0.3, 0.6),
			Pwhite(0.6, 1)
		], inf),

		\amp, Pshuf([

			Pshuf([1, 1, 1, 1, 1, 1, 0, 0], inf)

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);
)

(
Pdef(\drill3,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch5], inf),
		\group, ~sources,
		\buf, Pshuf([~x14, ~x15, ~x16, ~x17].stutter(2), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+Pshuf([
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.2),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1)
		]*3, inf),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);
)

(
Pdef(\drill4,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch6], inf),
		\group, ~sources,
		\buf, Pshuf([Pshuf([~w14, ~l7, ~t2, ~f8, ~g3, ~r3, ~v14, ~m18, ~t2, ~j1, ~f2, ~v1, ~j12, ~o15, ~s3, ~d10], inf)].stutter(1), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+Pshuf([
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.2),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1),
			Pwhite(0, 0.1)
		]*6, inf),

		\amp, Pshuf([

			Pseq([1, 0, 0, 1, 0, 0, 1, 0], inf),
			Pseq([1, 0, 1/5, 1, 0, 1/5, 1, 0], inf),
			Pseq([
				1, 0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0,
				1, 0, 1, 0, 1, 0, 1, 0,

			], inf),
			Pseq([
				1, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0,
				1, 0, 1, 0, 0, 0, 1, 0,

			], inf),
			Pseq([
				1, 0, 0, 1, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 0, 1, 0, 0, 0,
				0, 0, 1, 0, 0, 0, 1, 0,

			], inf),
			Pseq([
				1, 0, 0, 1, 0, 0, 1, 0,
				1, 0, 0, 1, 0, 1/5, 1, 0,
			], inf),



		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).play(quant:60/~mt);
)
