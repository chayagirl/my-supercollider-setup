(
~patch1 = Bus.audio(s, 2);
~patch2 = Bus.audio(s, 2);
~patch3 = Bus.audio(s, 2);
~patch4 = Bus.audio(s, 2);
~patch5 = Bus.audio(s, 2);
~patch6 = Bus.audio(s, 2);
~patch7 = Bus.audio(s, 2);

~handy = Bus.audio(s, 2);
~pout = Bus.audio(s, 2);
~sources = Group.head;
~mixer = Group.tail;

~channel1 = Group.tail(~mixer);
~channel2 = Group.tail(~mixer);
~channel3 = Group.tail(~mixer);
~channel4 = Group.tail(~mixer);
~channel5 = Group.tail(~mixer);
~channel6 = Group.tail(~mixer);
~channel7 = Group.tail(~mixer);

~master = Group.tail(~mixer);


SynthDef.new(\bufplaya, { //regular, with a release tail
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1;
	var sig, env;
	env = EnvGen.kr(Env.perc(atk, rel), gate, doneAction:2);
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate, trig, pos, loop);
	sig = sig * env;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;

SynthDef.new(\bufplaya2, { //for warbly pitch (no release tail)
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1;
	var sig, env, env2;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate*LFNoise2.ar(7).range(0.4, 3), trig, pos, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;

SynthDef.new(\bufplaya3, { //for stutter loops (without release tail)
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1;
	var sig, env, env2;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate, trig, pos, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;

SynthDef.new(\bufplaya4, { //for upward arpeggios
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1, arptime=0.05, impulsetime=400;
	var sig, env, env2;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate*EnvGen.kr(Env.new([1, 2, 4, 8, 16], arptime, -999), Impulse.ar(impulsetime)), trig, pos, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;

SynthDef.new(\bufplaya5, { //for downward arpeggios (bassy sounds)
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1, arptime=0.06, impulsetime=300;
	var sig, env, env2;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate*EnvGen.kr(Env.new([1, 1/2, 1/4, 1/8, 1/16, 1/32], arptime, -999)), trig, pos, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;

SynthDef.new(\bufplaya6, { //for downward arpeggios (bassy sounds)
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1, kickenv=0.2;
	var sig, env, env2;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate*EnvGen.kr(Env.perc(0, kickenv)), trig, pos, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;


SynthDef.new(\bufplaya7, { //weird fft stuff adapted from mila code
    arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf;
    var sig, chain1, chain2, env, env2;
    env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
    sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate, 1, pos, loop);
    chain1 = FFT(LocalBuf(2048), sig[0]);
    chain1 = PV_MagFreeze(chain1, MouseX.kr(0, 1).round(1));
	chain1 = PV_LocalMax(chain1, MouseY.kr(-1, 11));
    sig[0] = IFFT(chain1);
    chain2 = FFT(LocalBuf(2048), sig[1]);
    chain2 = PV_MagFreeze(chain2, MouseX.kr(0, 1).round(1));
	chain2 = PV_LocalMax(chain2, MouseY.kr(-1, 11));
    sig[1] = IFFT(chain2);
    sig = Balance2.ar(sig[0], sig[1]);
    sig = sig * amp * env * env2;
    sig = Out.ar(0, sig);
}).add;

SynthDef.new(\bufplaya8, { //BufRd MouseX manipulation
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1, start=1;
	var sig, env, env2, ptr, end;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	end = BufDur.kr(buf)*BufSampleRate.kr(buf);
	ptr = VarSaw.ar(1).range(start*MouseX.kr(1, end), end/MouseX.kr(1, end));
	sig = BufRd.ar(2, buf, ptr, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;


~channel1 = (
	SynthDef(\ch1mix, {
		arg freesend=0, amp=1, slider1=1, pan=0;
		var sig;
		sig = In.ar(~patch1, 2);
		sig = Compander.ar(sig);
		sig = sig * amp * slider1;
		sig = Balance2.ar(sig[0], sig[1], pan);
		sig = Out.ar(~pout, sig);
	}).play(~channel1);
);

~channel2 = (
	SynthDef(\ch2mix, {
		arg freesend=0, pan=0, mix=0.33, room=0.5, damp=0.5, amp=1, slider2=1;
		var sig;
		sig = In.ar(~patch2, 2);
		sig = FreeVerb2.ar(sig[0], sig[1], mix, room, damp);
		sig = sig*amp*1.2*slider2;
		sig = Balance2.ar(sig[0], sig[1], pan);
		sig = Out.ar(~pout, sig);
	}).play(~channel2);
);

~channel3 = (
	SynthDef(\ch3mix, {
		arg freesend=0, pan=0, windowSize=0.2, pitchRatio=1, pitchDispersion=0, timeDispersion=0, amp=1, slider3=1;
		var sig;
		sig = In.ar(~patch3, 2);
		sig = sig * amp * slider3;
		sig = PitchShift.ar(sig, windowSize, pitchRatio, pitchDispersion, timeDispersion);
		sig = Balance2.ar(sig[0], sig[1], pan);
		sig = Out.ar(~pout, sig);
	}).play(~channel3);
);

~channel4 = (
	SynthDef(\ch4mix, {
		arg freesend=0, amp=1, slider4=1;
		var sig;
		sig = In.ar(~patch4, 2);
		sig = Compander.ar(sig);
		sig = sig * amp * slider4;
		sig = Balance2.ar(sig[0], sig[1], 0.33);
		sig = Out.ar(~pout, sig);
	}).play(~channel4);
);

~channel5 = (
	SynthDef(\ch5mix, {
		arg freesend=0, amp=1, slider5=1;
		var sig;
		sig = In.ar(~patch5, 2);
		sig = Compander.ar(sig);
		sig = sig * amp * slider5;
		sig = Balance2.ar(sig[0], sig[1], -0.25);
		sig = Out.ar(~pout, sig);
	}).play(~channel5);
);

~channel6 = (
	SynthDef(\ch6mix, {
		arg freesend=0, amp=1, slider6=1;
		var sig;
		sig = In.ar(~patch6, 2);
		sig = Compander.ar(sig);
		sig = sig * amp * slider6;
		sig = Balance2.ar(sig[0], sig[1], 0.4);
		sig = Out.ar(~pout, sig);
	}).play(~channel6);
);

~channel7 = (
	SynthDef(\ch7mix, {
		arg freesend=0, amp=1, slider7=1;
		var sig;
		sig = In.ar(~patch7, 2);
		sig = Compander.ar(sig);
		sig = sig * amp * slider7;
		sig = Balance2.ar(sig[0], sig[1], -0.6);
		sig = Out.ar(~pout, sig);
	}).play(~channel7);
);

~master = (
	SynthDef(\master, {
		var sig;
		sig = In.ar(~pout, 2);
		sig = Compander.ar(sig);
		sig = Limiter.ar(sig);
		sig = Out.ar(0, sig);
	}).play(~master);
);

)