(
Pdef(\long1,
	Pbind(
		\instrument, Prand([\bufplaya, \bufplaya3, \bufplaya3, \bufplaya5], inf),
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([~z6, ~z12, ~c3, ~z19, ~z3, ~k18].stutter(1), inf),
		\atk, 0,
		\dur, Pwhite(1, 2),
		\rel, 60/~mt/(1/Pkey(\dur, inf)),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pseq([1, 2, 1/2, 3/4, 5/3, 4/3, 2/3], inf),//*Pfunc({f[0]}),
		\pos, 44100,//*Pwhite(0, 0.5),
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(8)
	);
).stop(quant:60/~mt);
)

(
Pdef(\long3,
	Pbind(
		\instrument, Prand([\bufplaya, \bufplaya, \bufplaya3, \bufplaya3], inf),
		\patch, Pshuf([~patch6], inf),
		\group, ~sources,
		\buf,
		Pshuf([~a1, ~a2, ~a3, ~a4, ~a5, ~a6, ~a7, ~a8].stutter(1), inf),
		\atk, 0,
		\dur, 3/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf)) + Prand([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5], inf),

		\amp, 1,


		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pseq([1, 2, 1/2, 3/4, 5/3, 4/3, 2/3], inf),//*Pfunc({f[0]}),
		\pos, 44100*Pwhite(0, 0.5),
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(8)
	);
).stop(quant:60/~mt);
)

(
Pdef(\long2,
	Pbind(
		\instrument, Prand([\bufplaya, \bufplaya3, \bufplaya3, \bufplaya4], inf),
		\patch, Pshuf([~patch5], inf),
		\group, ~sources,
		\buf, Pshuf([~f1, ~f2, ~f3, ~f4, ~f5, ~f6, ~f7, ~f8].stutter(1), inf)


		,
		\atk, 0,
		\dur, 1/2,
		\rel, 60/~mt/(1/Pkey(\dur, inf)) + Pwhite(0, 0.2),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pseq([Pgeom(1, 0.99, 256)], inf),
		\pos, 0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(8)
	);
).play(quant:60/~mt);
)

(
Pdef(\long4,
	Pbind(
		\instrument, Prand([\bufplaya5, \bufplaya6, \bufplaya7, \bufplaya4], inf),
		\patch, Pshuf([~patch3], inf),
		\group, ~sources,
		\buf, Pshuf([~c20, ~p5, ~p4, ~e3].stutter(16), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf)) + Pwhite(0, 0.2),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pseq([1, 2, 1/2, 3/4, 5/3, 4/3, 2/3], inf).stutter(2),//*Pfunc({f[0]}),
		\pos, 44100*Pwhite(0, 0.5),
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(8)
	);
).stop(quant:60/~mt);
)