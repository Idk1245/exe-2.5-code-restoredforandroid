package mobile.flixel;

import flixel.FlxG;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxDestroyUtil;
import openfl.display.BitmapData;
import openfl.display.Shape;
import mobile.flixel.FlxButton;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

/**
 * A zone with 4 hint's (A hitbox).
 * It's really easy to customize the layout.
 *
 * @author: Saw (M.A. Jigsaw)
 */
class FlxHitbox extends FlxSpriteGroup
{
	public var buttonLeft:FlxButton = new FlxButton(0, 0);
	public var buttonDown:FlxButton = new FlxButton(0, 0);
	public var buttonUp:FlxButton = new FlxButton(0, 0);
	public var buttonRight:FlxButton = new FlxButton(0, 0);

	public var buttonDodge:FlxButton = new FlxButton(0, 0);
	public var buttonAttackLeft:FlxButton = new FlxButton(0, 0);
	public var buttonAttackRight:FlxButton = new FlxButton(0, 0);

	/**
	 * Create the zone.
	 */
	public function new(type:FlxHitboxType)
	{
		super();

		final offsetFir:Int = (FlxG.save.data.mechsInputVariants ? Std.int(FlxG.height / 4) * 3 : 0);
		final offsetSec:Int = (FlxG.save.data.mechsInputVariants ? 0 : Std.int(FlxG.height / 4));

		switch (type)
		{
			case DEFAULT:
				add(buttonLeft = createHint(0, 0, Std.int(FlxG.width / 4), FlxG.height, 0xFF00FF));
				add(buttonDown = createHint(FlxG.width / 4, 0, Std.int(FlxG.width / 4), FlxG.height, 0x00FFFF));
				add(buttonUp = createHint(FlxG.width / 2, 0, Std.int(FlxG.width / 4), FlxG.height, 0x00FF00));
				add(buttonRight = createHint((FlxG.width / 2) + (FlxG.width / 4), 0, Std.int(FlxG.width / 4), FlxG.height, 0xFF0000));
				
			case SPACE:
				add(buttonLeft = createHint(0, offsetSec, Std.int(FlxG.width / 4), 540, 0xFF00FF));
				add(buttonDown = createHint(FlxG.width / 4, offsetSec, Std.int(FlxG.width / 4), 540, 0x00FFFF));
				add(buttonUp = createHint(FlxG.width / 2, offsetSec, Std.int(FlxG.width / 4), 540, 0x00FF00));
				add(buttonRight = createHint((FlxG.width / 2) + (FlxG.width / 4), offsetSec, Std.int(FlxG.width / 4), 540, 0xFF0000));
				add(buttonDodge = createHint(0, offsetFir, FlxG.width, Std.int(FlxG.height / 4), 0xFFFF00));
		}

		scrollFactor.set();
	}

	/**
	 * Clean up memory.
	 */
	override function destroy()
	{
		super.destroy();

		buttonLeft = null;
		buttonDown = null;
		buttonUp = null;
		buttonRight = null;
		buttonDodge = null;
		buttonAttackLeft = null;
		buttonAttackRight = null;
	}

	private function createHintGraphic(Width:Int, Height:Int, Color:Int = 0xFFFFFF):BitmapData
	{
		var shape:Shape = new Shape();

		if (FlxG.save.data.gradientHitboxes)
		{
			shape.graphics.beginFill(Color);
			shape.graphics.lineStyle(3, Color, 1);
			shape.graphics.drawRect(0, 0, Width, Height);
			shape.graphics.lineStyle(0, 0, 0);
			shape.graphics.drawRect(3, 3, Width - 6, Height - 6);
			shape.graphics.endFill();
			shape.graphics.beginGradientFill(RADIAL, [Color, FlxColor.TRANSPARENT], [0.6, 0], [0, 255], null, null, null, 0.5);
			shape.graphics.drawRect(3, 3, Width - 6, Height - 6);
			shape.graphics.endFill();
		}
		else
		{
			shape.graphics.beginFill(Color);
			shape.graphics.lineStyle(10, Color, 1);
			shape.graphics.drawRect(0, 0, Width, Height);
			shape.graphics.endFill();
		}

		var bitmap:BitmapData = new BitmapData(Width, Height, true, 0);
		bitmap.draw(shape);
		return bitmap;
	}

	private function createHint(X:Float, Y:Float, Width:Int, Height:Int, Color:Int = 0xFFFFFF):FlxButton
	{
		var hintTween:FlxTween = null;
		var hint:FlxButton = new FlxButton(X, Y);
		hint.loadGraphic(createHintGraphic(Width, Height, Color));
		hint.solid = false;
		hint.immovable = true;
		hint.scrollFactor.set();
		hint.alpha = 0.00001;
		hint.onDown.callback = function()
		{
			if (hintTween != null)
				hintTween.cancel();

			hintTween = FlxTween.tween(hint, {alpha: MobileControls.getOpacity(true)}, MobileControls.getOpacity(true) / 100, {
				ease: FlxEase.circInOut,
				onComplete: function(twn:FlxTween)
				{
					hintTween = null;
				}
			});
		}
		hint.onUp.callback = function()
		{
			if (hintTween != null)
				hintTween.cancel();

			hintTween = FlxTween.tween(hint, {alpha: 0.00001}, MobileControls.getOpacity(true) / 10, {
				ease: FlxEase.circInOut,
				onComplete: function(twn:FlxTween)
				{
					hintTween = null;
				}
			});
		}
		hint.onOut.callback = function()
		{
			if (hintTween != null)
				hintTween.cancel();

			hintTween = FlxTween.tween(hint, {alpha: 0.00001}, MobileControls.getOpacity(true) / 10, {
				ease: FlxEase.circInOut,
				onComplete: function(twn:FlxTween)
				{
					hintTween = null;
				}
			});
		}
		#if FLX_DEBUG
		hint.ignoreDrawDebug = true;
		#end
		return hint;
	}
}

enum FlxHitboxType
{
	DEFAULT;
	SPACE;
}
