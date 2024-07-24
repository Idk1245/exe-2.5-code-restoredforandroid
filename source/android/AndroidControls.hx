package android;

import android.flixel.FlxHitbox;
import android.flixel.FlxVirtualPad;
import flixel.FlxG;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxPoint;
import flixel.util.FlxDestroyUtil;
import android.flixel.FlxHitbox.Modes;

class AndroidControls extends FlxSpriteGroup
{
	public var hitbox:FlxHitbox;

	public function new(mechsType:Modes = DEFAULT)
	{
		super();

		hitbox = new FlxHitbox(mechsType);
		add(hitbox);
	}

	override public function destroy():Void
	{
		super.destroy();

		if (hitbox != null)
		{
			hitbox = FlxDestroyUtil.destroy(hitbox);
			hitbox = null;
		}
	}

	public static function setOpacity(opacity:Float, isHitbox:Bool = false):Void
	{
		if (!isHitbox)
		{
			FlxG.save.data.virtualPadOpacity = opacity;
			FlxG.save.flush();
		}
		else
		{
			FlxG.save.data.hitboxOpacity = opacity;
			FlxG.save.flush();
		}
	}

	public static function getOpacity(isHitbox:Bool = false):Float
	{
		if (!isHitbox)
		{
			if (FlxG.save.data.virtualPadOpacity == null)
			{
				FlxG.save.data.virtualPadOpacity = 0.6;
				FlxG.save.flush();
			}

			return FlxG.save.data.virtualPadOpacity;
		}
		else
		{
			return FlxG.save.data.hitboxOpacity;
		}
	}
}
