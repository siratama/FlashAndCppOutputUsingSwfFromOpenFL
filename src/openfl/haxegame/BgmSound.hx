package haxegame;
import flash.media.Sound;
import openfl.Assets;
abstract BgmSound(Sound){
    public function new()
        this = Assets.getSound('haxegame.BgmSound');
    @:to public function getInstance():Sound
        return this;
}