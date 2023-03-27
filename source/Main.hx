package;

import flixel.graphics.FlxGraphic;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxState;
import sys.FileSystem;
import openfl.Assets;
import openfl.Lib;
import openfl.display.FPS;
import openfl.display.Sprite;
import openfl.events.Event;
import lime.system.System;

class Main extends Sprite
{
	var gameWidth:Int = 1280; // Width of the game in pixels (might be less / more in actual pixels depending on your zoom).
	var gameHeight:Int = 720; // Height of the game in pixels (might be less / more in actual pixels depending on your zoom).
	public static var initialState:Class<FlxState> = Intro; // The FlxState the game starts with.
	var zoom:Float = -1; // If -1, zoom is automatically calculated to fit the window dimensions.
	var framerate:Int = 60; // How many frames per second the game should run at.
	var skipSplash:Bool = true; // Whether to skip the flixel splash screen that appears in release mode.
	var startFullscreen:Bool = false; // Whether to start the game in fullscreen on desktop targets
	public static var fpsVar:FPS;

	// You can pretty much ignore everything from here on - your code should go in your states.
 	public static var path:String = System.applicationStorageDirectory;
	
	static final losvideos:Array<String> = [
		"bothCreditsAndIntro",
		"explosion",
		"glasses",
		"guns",
		"HaxeFlixelIntro",
		"hitmarkers",
		"illuminati",
		"IlluminatiConfirmed",
		"introCREDITS",
		"mlg",
		"noscope",
		"sonic1",
		"soundtestcodes",
		"tooslowcutscene1",
		"tooslowcutscene2",
		"weed",
		"youcantruncutscene2",
	]; //better way to do this?
	
	static final videosdead:Array<String> = [
		"Atomic",
		"BfFuckingDies",
		"Car",
		"FastBear",
		"g00seb4rn6",
		"JoeManReference",
		"Kys",
	]; //someone kill me

	public static function main():Void {
		Lib.current.addChild(new Main());
	}

	public function new()
	{
		super();

                Generic.initCrashHandler();

		if (stage != null)
		{
			init();
		}
		else
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
	}

	private function init(?E:Event):Void
	{
		if (hasEventListener(Event.ADDED_TO_STAGE))
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
		}

		setupGame();
	}

	private function setupGame():Void
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;

		if (zoom == -1)
		{
			var ratioX:Float = stageWidth / gameWidth;
			var ratioY:Float = stageHeight / gameHeight;
			zoom = Math.min(ratioX, ratioY);
			gameWidth = Math.ceil(stageWidth / zoom);
			gameHeight = Math.ceil(stageHeight / zoom);
		}
		
		Generic.mode = ROOTDATA;
		if (!FileSystem.exists(Generic.returnPath() + 'assets')) {
			FileSystem.createDirectory(Generic.returnPath() + 'assets');
		}
		if (!FileSystem.exists(Generic.returnPath() + 'assets/videos')) {
			FileSystem.createDirectory(Generic.returnPath() + 'assets/videos');
		}
		
		if (!FileSystem.exists(Generic.returnPath() + 'assets/videos/SanicGameOvers')) {
			FileSystem.createDirectory(Generic.returnPath() + 'assets/videos/SanicGameOvers');
		}

    for (video in losvideos) {
		Generic.copyContent(Paths._video(video), Paths._video(video));
		}
		
		for (dead in videosdead) {
		Generic.copyContent(Paths._video('SanicGameOvers' + '/' + dead), Paths._video('SanicGameOvers' + '/' + dead));
		}

		#if !debug
		initialState = Intro;
		#end

		//
		ClientPrefs.startControls();
		// FlxGraphic.defaultPersist = true;
		
		//
		
		addChild(new FlxGame(gameWidth, gameHeight, initialState, zoom, framerate, framerate, skipSplash, startFullscreen));

		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);
		if(fpsVar != null) {
			fpsVar.visible = ClientPrefs.showFPS;
		}

		#if html5
		FlxG.autoPause = false;
		FlxG.mouse.visible = false;
		#end
	}

	public function getFPS():Float{
		return fpsVar.currentFPS;	
	}
}
