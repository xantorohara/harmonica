package synthesizers.bayan{
import synthesizers.AbstractSynthesizer;

public class BayanSynthesizer extends AbstractSynthesizer {

    [Embed(source="mp3/b-0-00.mp3")]
    public var snd_0_00:Class;
    [Embed(source="mp3/b-0-01.mp3")]
    public var snd_0_01:Class;
    [Embed(source="mp3/b-0-02.mp3")]
    public var snd_0_02:Class;
    [Embed(source="mp3/b-0-03.mp3")]
    public var snd_0_03:Class;
    [Embed(source="mp3/b-0-04.mp3")]
    public var snd_0_04:Class;
    [Embed(source="mp3/b-0-05.mp3")]
    public var snd_0_05:Class;
    [Embed(source="mp3/b-0-06.mp3")]
    public var snd_0_06:Class;
    [Embed(source="mp3/b-0-07.mp3")]
    public var snd_0_07:Class;
    [Embed(source="mp3/b-0-08.mp3")]
    public var snd_0_08:Class;
    [Embed(source="mp3/b-0-09.mp3")]
    public var snd_0_09:Class;
    [Embed(source="mp3/b-0-10.mp3")]
    public var snd_0_10:Class;
    [Embed(source="mp3/b-0-11.mp3")]
    public var snd_0_11:Class;

    [Embed(source="mp3/b-1-00.mp3")]
    public var snd_1_00:Class;
    [Embed(source="mp3/b-1-01.mp3")]
    public var snd_1_01:Class;
    [Embed(source="mp3/b-1-02.mp3")]
    public var snd_1_02:Class;
    [Embed(source="mp3/b-1-03.mp3")]
    public var snd_1_03:Class;
    [Embed(source="mp3/b-1-04.mp3")]
    public var snd_1_04:Class;
    [Embed(source="mp3/b-1-05.mp3")]
    public var snd_1_05:Class;
    [Embed(source="mp3/b-1-06.mp3")]
    public var snd_1_06:Class;
    [Embed(source="mp3/b-1-07.mp3")]
    public var snd_1_07:Class;
    [Embed(source="mp3/b-1-08.mp3")]
    public var snd_1_08:Class;
    [Embed(source="mp3/b-1-09.mp3")]
    public var snd_1_09:Class;
    [Embed(source="mp3/b-1-10.mp3")]
    public var snd_1_10:Class;
    [Embed(source="mp3/b-1-11.mp3")]
    public var snd_1_11:Class;

    [Embed(source="mp3/b-2-00.mp3")]
    public var snd_2_00:Class;
    [Embed(source="mp3/b-2-01.mp3")]
    public var snd_2_01:Class;
    [Embed(source="mp3/b-2-02.mp3")]
    public var snd_2_02:Class;
    [Embed(source="mp3/b-2-03.mp3")]
    public var snd_2_03:Class;
    [Embed(source="mp3/b-2-04.mp3")]
    public var snd_2_04:Class;
    [Embed(source="mp3/b-2-05.mp3")]
    public var snd_2_05:Class;
    [Embed(source="mp3/b-2-06.mp3")]
    public var snd_2_06:Class;
    [Embed(source="mp3/b-2-07.mp3")]
    public var snd_2_07:Class;
    [Embed(source="mp3/b-2-08.mp3")]
    public var snd_2_08:Class;
    [Embed(source="mp3/b-2-09.mp3")]
    public var snd_2_09:Class;
    [Embed(source="mp3/b-2-10.mp3")]
    public var snd_2_10:Class;
    [Embed(source="mp3/b-2-11.mp3")]
    public var snd_2_11:Class;

    public var sounds:Array = [
        new snd_0_00(),
        new snd_0_01(),
        new snd_0_02(),
        new snd_0_03(),
        new snd_0_04(),
        new snd_0_05(),
        new snd_0_06(),
        new snd_0_07(),
        new snd_0_08(),
        new snd_0_09(),
        new snd_0_10(),
        new snd_0_11(),

        new snd_1_00(),
        new snd_1_01(),
        new snd_1_02(),
        new snd_1_03(),
        new snd_1_04(),
        new snd_1_05(),
        new snd_1_06(),
        new snd_1_07(),
        new snd_1_08(),
        new snd_1_09(),
        new snd_1_10(),
        new snd_1_11(),

        new snd_2_00(),
        new snd_2_01(),
        new snd_2_02(),
        new snd_2_03(),
        new snd_2_04(),
        new snd_2_05(),
        new snd_2_06(),
        new snd_2_07(),
        new snd_2_08(),
        new snd_2_09(),
        new snd_2_10(),
        new snd_2_11()
    ];

    public function BayanSynthesizer() {
    }

    protected var controls:Object = {};

    override public function play(note:Number):void {
        controls[note] = sounds[note].play();
    }

    override public function stop(note:Number):void {
        controls[note].stop();
    }
}
}