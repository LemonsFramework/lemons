package lemons.util;


// TODO: this class is non functional for cases like Void->Void, fix that


class Signal<I, R> {
    private var listeners:Array<{func:I->R, once:Bool}> = [];

    public function new() {}

    public function add(listener:I->R):Void
        listeners.push({func: listener, once: false});

    public function remove(listener:I->R):Void
        for (daListener in listeners)
            if (Reflect.compareMethods(daListener.func, listener)) listeners.remove(daListener);

    public function dispatch(data:I):Void {
        for (listener in listeners) {
            listener.func(data);
            if (listener.once) remove(listener.func);
        }
    }
}