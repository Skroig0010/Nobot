package rob;

import ecs.Entity;
import ecs.World;
import nengine.math.*;
import nengine.components.*;
import rob.systems.*;
import rob.components.*;

class Program extends hxd.App {

    private var world = new World();

    override function init() {
        engine.backgroundColor = 0xAAAABB;

        // ヒーローシステム
        world.addSystem(new HeroSystem(world));

        // モデル制御システム
        world.addSystem(new ModelSystem(world));

        // 主人公
        var hero = new Entity();
        hero.addComponent(new Hero());
        hero.addComponent(new Transform());
        hero.addComponent(new Model(s3d));

        world.addEntity(hero);

        // 落ちてるアイテム
        for(i in 0...10)
        {
            var item = new Entity();
            item.addComponent(new Transform(new Vec2(i, i)));
            item.addComponent(new Module(Foot(Rook)));
            item.addComponent(new Model(s3d));
            world.addEntity(item);
        } 
    }

    override function update(dt:Float) {
        world.update(1/60);
    }

    static function main() {
#if js
        hxd.Res.initEmbed();
#else
        hxd.res.Resource.LIVE_UPDATE = true;
        hxd.Res.initLocal();
#end
        new Program();
    }

}
