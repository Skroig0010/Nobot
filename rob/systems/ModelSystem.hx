package rob.systems;

import h3d.scene.Mesh;
import ecs.*;
import nengine.components.*;
import rob.components.Model;

class ModelSystem implements System
{
    public var world:World;
    public function new(world:World)
    {
        this.world = world;
    }

    public function update(dt:Float):Void
    {
        var entities = world.getEntities([Model.componentName, Transform.componentName]);

        for(entity in entities)
        {
            var model = entity.getComponent(Model);
            var transform = entity.getComponent(Transform).global;
            model.mesh.x = transform.position.x;
            model.mesh.z = transform.position.y;
        }
    }
}
