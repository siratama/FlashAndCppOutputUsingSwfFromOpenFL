package haxegame;
import flash.display.MovieClip;
import flash.text.TextField;
import openfl.Assets;
abstract WalkView(MovieClip){
    public function new()
        this = Assets.getMovieClip('view:haxegame.WalkView');
    @:to public function getInstance():MovieClip
        return this;



}
