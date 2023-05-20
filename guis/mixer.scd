
(
w = Window.new("gui", Rect.new(
	Window.screenBounds.width/2-100,
	Window.screenBounds.height/2-150,
	200,
	300
));
w.front;
w.alwaysOnTop = true;


~slider1 = Slider(w, Rect.new(20, 20, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel1.set(\slider1, cf);
	~q.set(\slider1, cf);
});

~slider2 = Slider(w, Rect.new(20, 60, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel2.set(\slider2, cf);
});


~slider3 = Slider(w, Rect.new(20, 100, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel3.set(\slider3, cf);
});

~slider4 = Slider(w, Rect.new(20, 140, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel4.set(\slider4, cf);
});

~slider5 = Slider(w, Rect.new(20, 180, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel5.set(\slider5, cf);
});

~slider6 = Slider(w, Rect.new(20, 220, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel6.set(\slider6, cf);
});

~slider7 = Slider(w, Rect.new(20, 260, 150, 30))
.action_({
	arg obj;
	var cf;
	cf = obj.value.postln;
	~channel7.set(\slider7, cf);
});

)


