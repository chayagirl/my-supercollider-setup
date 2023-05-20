
(
w = Window.new("gui", Rect.new(
	Window.screenBounds.width/2-100,
	Window.screenBounds.height/2-150,
	200,
	300
));
w.front;
w.alwaysOnTop = true;

MultiSliderView.new(w, Rect(20,20,300,200))
.size_(20)
.elasticMode_(true)
.drawRects_(true)
.showIndex_(true)
.indexThumbSize_(48)
.action_({
    arg obj;
    obj.value.linlin(0,1,1/16,16);
    f = obj.value.linexp(0,1,1/16,16)
});
)