package instruments {
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.containers.Box;
import mx.events.FlexEvent;

import synthesizers.AbstractSynthesizer;

public class AbstractInstrument extends Box {
    
    protected static const N_DO:String = 'Do';
    protected static const N_LA:String = 'La';
    protected static const N_RE_MI:String = 'Re♯\nMi♭';
    protected static const N_FA_SOL:String = 'Fa♯\nSol♭';
    protected static const N_DO_RE:String = 'Do♯\nRe♭';
    protected static const N_MI:String = 'Mi';
    protected static const N_SOL:String = 'Sol';
    protected static const N_LA_SI:String = 'La♯\nSi♭';
    protected static const N_RE:String = 'Re';
    protected static const N_FA:String = 'Fa';
    protected static const N_SOL_LA:String = 'Sol♯\nLa♭';
    protected static const N_SI:String = 'Si';

    public var synt:AbstractSynthesizer;

    public var buttons:ArrayCollection = new ArrayCollection();

    public function pushButton(event:FlexEvent):void {
        buttons.addItem(event.currentTarget);
    }

    public function mouseDownHandler(event:MouseEvent):void {
        if (event.target.getRepeaterItem()) {
            //trace('MD:' + event.target.getRepeaterItem()[0]);
            synt.play(event.target.getRepeaterItem()[2]);
        }
    }

    public function mouseUpHandler(event:MouseEvent):void {
        if (event.target.getRepeaterItem()) {
            //trace('MU:' + event.target.getRepeaterItem()[0]);
            synt.stop(event.target.getRepeaterItem()[2]);
        }
    }

    public function keyDown(event:KeyboardEvent):void {
        //trace('KD:' + event.keyCode);
        for each (var button:Object in buttons) {
            if (button.getRepeaterItem()[1] == event.keyCode) {
                if (!button.selected) {
                    button.selected = true;
                    synt.play(button.getRepeaterItem()[2]);
                }
            }
        }
    }

    public function keyUp(event:KeyboardEvent):void {
        //trace('KU:' + event.keyCode);
        for each (var button:Object in buttons) {
            if (button.getRepeaterItem()[1] == event.keyCode) {
                if (button.selected) {
                    button.selected = false;
                    synt.stop(button.getRepeaterItem()[2]);
                }
            }
        }
    }

    public function AbstractInstrument() {
        super();
    }
}
}