package mobile;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
import BaseOptionsMenu;
import openfl.Lib;

using StringTools;

class HitboxSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Hitbox Dodge Menu';
		rpcTitle = 'Hitbox Dodge Menu'; //hola amigos

		var option:Option = new Option('Dodge Style:',
			"Choose your Dodge Style hehe --mariomaster",
			'dodgepos',
			'string',
			'middle',
			['middle', 'up', 'down']);
		addOption(option);

		super();
	}
}

class GradientHitboxes extends BaseOptionsMenu
{
	public function new(desc:String)
	{
		title = 'Hitbox Style in Game';
		rpcTitle = 'Hitbox Style in Game';

	        var option:Option = new Option('Hitbox Style:',
			"Choose if your hitbox will be gradient or non-gradient.",
			'gradientHitboxes',
		        'string',
			'gradientHitboxes',
                        ['gradient', 'non-gradient']);		       
	        addOption(option);
		
		super();
	}
}
		FlxG.save.data.gradientHitboxes = !FlxG.save.data.gradientHitboxes;
		display = updateDisplay();
		return true;
		return (FlxG.save.data.gradientHitboxes ? "Gradient Hitboxes On" : "Gradient Hitboxes Off");
	}
}
