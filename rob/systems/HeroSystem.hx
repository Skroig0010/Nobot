package rob.systems;
import ecs.System;
import ecs.World;
import ecs.Entity;
import nengine.components.*;
import rob.components.Hero;
import hxd.Key;

class HeroSystem implements System
{
    public var world:World;

    public function new(world:World)
    {
        this.world = world;
    }

    public function update(dt:Float):Void
    {
        var entities = world.getEntities([Hero.componentName, Transform.componentName]);
        for(entity in entities)
        {
            updateHero(entity, world);
        }
    }

    private function updateHero(entity:Entity, world:World):Void
    {
        if(Key.isDown(hxd.Key.RIGHT))
        {
        }
    }
}
