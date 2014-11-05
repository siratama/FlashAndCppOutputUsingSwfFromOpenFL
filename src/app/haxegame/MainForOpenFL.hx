package haxegame;

import openfl.Assets;

class MainForOpenFL extends Main
{
	override private function initializeChildToLoadAssets()
	{
		loaded = false;
		Assets.loadLibrary("view", function(_){
			loaded = true;
		});
	}
}
