package synthesizers.drums{
import synthesizers.AbstractSynthesizer;

public class DrumsSynthesizer extends AbstractSynthesizer {

    [Embed(source="mp3/a_crash.mp3")]
    public var snd_0_00:Class;

    [Embed(source="mp3/b_open_hats.mp3")]
    public var snd_0_01:Class;

    [Embed(source="mp3/c_kick.mp3")]
    public var snd_0_02:Class;

    [Embed(source="mp3/d_snare1.mp3")]
    public var snd_0_03:Class;

    [Embed(source="mp3/f_snare.mp3")]
    public var snd_0_04:Class;

    [Embed(source="mp3/g_cymbals.mp3")]
    public var snd_0_05:Class;

    [Embed(source="mp3/s_crash.mp3")]
    public var snd_0_06:Class;

    [Embed(source="mp3/v_tom2.mp3")]
    public var snd_0_07:Class;

    [Embed(source="mp3/x_tom1.mp3")]
    public var snd_0_08:Class;

    [Embed(source="mp3/z_hats.mp3")]
    public var snd_0_09:Class;

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
        new snd_0_09()
    ];

    public function DrumsSynthesizer() {
    }

    override public function play(note:Number):void {
        if (sounds[note]) {
            sounds[note].play();
        }
    }
}
}