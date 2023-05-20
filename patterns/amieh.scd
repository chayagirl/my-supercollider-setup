(
Pdef(\multipurpose2,
	Pbind(
		\instrument, Pshuf([
			Pseq([\bufplaya].stutter(1)),


		], inf),
		\patch, Pshuf([~patch2, ~patch3], inf).stutter(4),
		\group, ~sources,
		\buf, Pshuf([

			Pshuf([~g11, ~g13, ~h14, ~h16], inf).stutter(4),

		], inf),
		\atk, 0,
		\dur, 1,
		\rel, 0.7,

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 2, 0.5, 1], inf).stutter(1),
		\pos, 44100,//*Pfunc({f[3]}),
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(1)
	);
).play(quant:60/~mt);
)

(
Pdef(\multipurpose1,
	Pbind(
		\instrument, Pshuf([
			Pseq([\bufplaya].stutter(1)),


		], inf),
		\patch, Pshuf([~patch2], inf).stutter(4),
		\group, ~sources,
		\buf, Pshuf([

			Pshuf([~g11, ~f12, ~h13, ~a14], inf).stutter(4),

		], inf),
		\atk, 0,
		\dur, 1/4,
		\rel, Pwhite(0.1, 3),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 2, 0.5, 1], inf).stutter(1),
		\pos, 44100,//*Pfunc({f[3]}),
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(1)
	);
).stop(quant:60/~mt);
)

(
Pdef(\multipurpose3,
	Pbind(
		\instrument, Pshuf([
			Pseq([\bufplaya].stutter(1)),


		], inf),
		\patch, Pshuf([~patch2], inf).stutter(4),
		\group, ~sources,
		\buf, Pshuf([

			Pshuf([~s10, ~s13, ~s15, ~s19, ~s1, ~s20, ~b1, ~c17], inf).stutter(8),

		], inf),
		\atk, 0,
		\dur, 1,
		\rel, 0.05,

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 2, 0.5, 1], inf).stutter(1),
		\pos, 44100,//*Pfunc({f[3]}),
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(1)
	);
).play(quant:60/~mt);
)