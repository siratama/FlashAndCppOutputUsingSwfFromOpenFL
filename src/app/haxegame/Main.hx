package haxegame;

import flash.display.MovieClip;
import flash.events.Event;
import flash.Lib;
import flash.display.Stage;

class Main
{
	private var stage:Stage;
	private var root:MovieClip;
	private var mainFunction:Void->Void;
	private var loaded:Bool;

	public function new(){
		initialize();
	}
	private function initialize()
	{
		root = flash.Lib.current;
		stage = root.stage;
		stage.addEventListener(Event.ENTER_FRAME, run);
		initializeToLoadAssets();
	}
	private function run(event){
		mainFunction();
	}
	private function initializeToLoadAssets()
	{
		initializeChildToLoadAssets();
		mainFunction = loadAssets;
	}
	private function initializeChildToLoadAssets(){}

	private function loadAssets()
	{
		if(loaded)
			initializeMain();
	}
	private function initializeMain()
	{
		var walkView = new WalkView();
		root.addChild(walkView);

		finish();
	}
	private function finish(){
		stage.removeEventListener(Event.ENTER_FRAME, run);
	}
}
