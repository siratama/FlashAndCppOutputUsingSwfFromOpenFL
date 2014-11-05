package haxegame;
import flash.display.MovieClip;
import flash.text.TextField;
import openfl.Assets;
abstract TestView(MovieClip){
    public function new()
        this = Assets.getMovieClip('view:haxegame.TestView');
    @:to public function getInstance():MovieClip
        return this;


	public var rectA(get, never):flash.display.MovieClip;
	function get_rectA(){
		return cast(this.getChildByName('rectA'), flash.display.MovieClip);
	}

	public var rectB(get, never):flash.display.MovieClip;
	function get_rectB(){
		return cast(this.getChildByName('rectB'), flash.display.MovieClip);
	}

	public var rectC(get, never):flash.display.MovieClip;
	function get_rectC(){
		return cast(this.getChildByName('rectC'), flash.display.MovieClip);
	}

}
