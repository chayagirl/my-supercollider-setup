(
Pdef(\ambient,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1, ~patch4, ~patch5], inf),
		\group, ~sources,
		\buf, Place([

			//Pseq([~g1], inf),
			//Pseq([~a14, ~a15], inf),
			//Pseq([~a16, ~a17], inf),
			//Pseq([~c3, ~c4, ~c5, ~c6, ~c7, ~c8], inf),
			//Pseq([~f3], inf),
			//Pshuf([~o1, ~o2, ~o3, ~o4, ~o5, ~o6, ~o7], inf),
			Pshuf([~i11, ~i12, ~i9, ~h2], inf)

			//Pshuf([~s1, ~s2, ~s3, ~s4, ~s5, ~s6, ~s7, ~s8, ~s9, ~s10, ~s11, ~s12, ~s13, ~s14, ~s15, ~s16, ~s17, ~s18, ~s19, ~s20], inf)

		], inf),

		\atk, 0,
		\rel, Pwhite(0.1, 0.5, inf)*5,
		\amp, 1,

		\stretch, 60/~mt,
		\dur, 4,

		\rate, Pshuf([1, 2, 0.5, 3/2, 2/3]*1.5, inf),
		\pos, Pshuf([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]*44100, inf),
		\loop, 1
	);
).play(quant:60/~mt);
)

~a6.play
~f6.play

Buffer.freeAll;

~t4.play