package haxegame;

import flash.net.URLRequest;
import flash.display.Loader;
import flash.events.Event;

class MainForFlash extends Main
{
	private static inline var ASSETS_SWF = "../../../assets/view.swf";
	private var assetsLoader:Loader;

	public static function main() {
		new MainForFlash();
	}
	override private function initializeChildToLoadAssets()
	{
		loaded = false;
		assetsLoader = new Loader();
		assetsLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoadComplete);
		assetsLoader.load(new URLRequest(ASSETS_SWF));
	}
	private function onLoadComplete(event:Event){
		loaded = true;
	}
}
