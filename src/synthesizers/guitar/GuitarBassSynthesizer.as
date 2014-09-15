package synthesizers.guitar{
import synthesizers.AbstractSynthesizer;

public class GuitarBassSynthesizer extends AbstractSynthesizer {

    [Embed(source="mp3_bass/bass_0-00.mp3")]
    public var snd_0_00:Class;
    [Embed(source="mp3_bass/bass_0-01.mp3")]
    public var snd_0_01:Class;
    [Embed(source="mp3_bass/bass_0-02.mp3")]
    public var snd_0_02:Class;
    [Embed(source="mp3_bass/bass_0-03.mp3")]
    public var snd_0_03:Class;
    [Embed(source="mp3_bass/bass_0-04.mp3")]
    public var snd_0_04:Class;
    [Embed(source="mp3_bass/bass_0-05.mp3")]
    public var snd_0_05:Class;
    [Embed(source="mp3_bass/bass_0-06.mp3")]
    public var snd_0_06:Class;
    [Embed(source="mp3_bass/bass_0-07.mp3")]
    public var snd_0_07:Class;
    [Embed(source="mp3_bass/bass_0-08.mp3")]
    public var snd_0_08:Class;
    [Embed(source="mp3_bass/bass_0-09.mp3")]
    public var snd_0_09:Class;
    [Embed(source="mp3_bass/bass_0-10.mp3")]
    public var snd_0_10:Class;
    [Embed(source="mp3_bass/bass_0-11.mp3")]
    public var snd_0_11:Class;

    [Embed(source="mp3_bass/bass_1-00.mp3")]
    public var snd_1_00:Class;
    [Embed(source="mp3_bass/bass_1-01.mp3")]
    public var snd_1_01:Class;
    [Embed(source="mp3_bass/bass_1-02.mp3")]
    public var snd_1_02:Class;
    [Embed(source="mp3_bass/bass_1-03.mp3")]
    public var snd_1_03:Class;
    [Embed(source="mp3_bass/bass_1-04.mp3")]
    public var snd_1_04:Class;
    [Embed(source="mp3_bass/bass_1-05.mp3")]
    public var snd_1_05:Class;
    [Embed(source="mp3_bass/bass_1-06.mp3")]
    public var snd_1_06:Class;
    [Embed(source="mp3_bass/bass_1-07.mp3")]
    public var snd_1_07:Class;
    [Embed(source="mp3_bass/bass_1-08.mp3")]
    public var snd_1_08:Class;
    [Embed(source="mp3_bass/bass_1-09.mp3")]
    public var snd_1_09:Class;
    [Embed(source="mp3_bass/bass_1-10.mp3")]
    public var snd_1_10:Class;
    [Embed(source="mp3_bass/bass_1-11.mp3")]
    public var snd_1_11:Class;

    [Embed(source="mp3_bass/bass_2-00.mp3")]
    public var snd_2_00:Class;
    [Embed(source="mp3_bass/bass_2-01.mp3")]
    public var snd_2_01:Class;
    [Embed(source="mp3_bass/bass_2-02.mp3")]
    public var snd_2_02:Class;
    [Embed(source="mp3_bass/bass_2-03.mp3")]
    public var snd_2_03:Class;
    [Embed(source="mp3_bass/bass_2-04.mp3")]
    public var snd_2_04:Class;
    [Embed(source="mp3_bass/bass_2-05.mp3")]
    public var snd_2_05:Class;
    [Embed(source="mp3_bass/bass_2-06.mp3")]
    public var snd_2_06:Class;
    [Embed(source="mp3_bass/bass_2-07.mp3")]
    public var snd_2_07:Class;
    [Embed(source="mp3_bass/bass_2-08.mp3")]
    public var snd_2_08:Class;
    [Embed(source="mp3_bass/bass_2-09.mp3")]
    public var snd_2_09:Class;
    [Embed(source="mp3_bass/bass_2-10.mp3")]
    public var snd_2_10:Class;
    [Embed(source="mp3_bass/bass_2-11.mp3")]
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

    public function GuitarBassSynthesizer() {
    }

    override public function play(note:Number):void {
        sounds[note].play();
    }
}
}