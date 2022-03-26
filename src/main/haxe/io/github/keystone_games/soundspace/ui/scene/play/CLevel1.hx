package io.github.keystone_games.soundspace.ui.scene.play;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;

class CLevel1 extends FlxState {
	public static var levelIndicator:FlxText;

	public static var time:Float = 0;
	public static var tempTime:Float = 0;
	public static var beats:Int = 0;
	public static final bpm:Float = 127;

	public static var lane1:FlxSprite;
	public static var lane2:FlxSprite;
	public static var lane3:FlxSprite;
	public static var lane4:FlxSprite;

	public static var note1:FlxSprite;
	public static var note2:FlxSprite;
	public static var note3:FlxSprite;
	public static var note4:FlxSprite;
	public static var note5:FlxSprite;
	public static var note6:FlxSprite;
	public static var note7:FlxSprite;
	public static var note8:FlxSprite;
	public static var note9:FlxSprite;
	public static var note10:FlxSprite;

	public static var key1:FlxSprite;
	public static var key2:FlxSprite;
	public static var key3:FlxSprite;
	public static var key4:FlxSprite;

	public override function create() {
		super.create();

		FlxG.updateFramerate = 1000;

		levelIndicator = new FlxText(0, 0, 0, "Level 1").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.BLUE, CENTER);
		levelIndicator.screenCenter(X);
		add(levelIndicator);

		lane1 = new FlxSprite();
		lane1.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#7f3e3e3e"));
		lane1.screenCenter(X);
		lane1.y = Std.int(FlxG.height / 16);
		lane1.x -= Std.int(lane1.width) * 2 - Std.int(lane1.width) * 0.5;
		add(lane1);
		lane2 = new FlxSprite();
		lane2.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#7f3e3e3e"));
		lane2.screenCenter(X);
		lane2.y = Std.int(FlxG.height / 16);
		lane2.x -= Std.int(lane2.width) * 1 - Std.int(lane2.width) * 0.5;
		add(lane2);
		lane3 = new FlxSprite();
		lane3.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#7f3e3e3e"));
		lane3.screenCenter(X);
		lane3.y = Std.int(FlxG.height / 16);
		lane3.x += Std.int(lane3.width) * 1 - Std.int(lane3.width) * 0.5;
		add(lane3);
		lane4 = new FlxSprite();
		lane4.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#7f3e3e3e"));
		lane4.screenCenter(X);
		lane4.y = Std.int(FlxG.height / 16);
		lane4.x += Std.int(lane4.width) * 2 - Std.int(lane4.width) * 0.5;
		add(lane4);
		trace(lane1.width);

		note1 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note2 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note3 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note4 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note5 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note6 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note7 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note8 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note9 = new FlxSprite(0, 0, Assets.ClassicNote__png);
		note10 = new FlxSprite(0, 0, Assets.ClassicNote__png);

		key1 = new FlxSprite(0, 0, Assets.Key__png);
		key1.x = lane1.x;
		key1.y = lane1.y;
		add(key1);
		key2 = new FlxSprite(0, 0, Assets.Key__png);
		key2.x = lane2.x;
		key2.y = lane2.y;
		add(key2);
		key3 = new FlxSprite(0, 0, Assets.Key__png);
		key3.x = lane3.x;
		key3.y = lane3.y;
		add(key3);
		key4 = new FlxSprite(0, 0, Assets.Key__png);
		key4.x = lane4.x;
		key4.y = lane4.y;
		add(key4);
	}

	public override function update(dt:Float) {
		super.update(dt);

		note1.x = lane2.x;
		note1.y = lane2.y;
		add(note1);

		time += dt;
		tempTime += dt;
		if (tempTime > (1000 / (bpm / 60))) {
			tempTime = 0;
			beats++;
		}
	}
}
