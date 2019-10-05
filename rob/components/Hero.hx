package rob.components;

import h3d.scene.Scene;
import h3d.scene.Mesh;
import ecs.Component;
import ecs.Entity;

class Hero implements Component
{
    public static inline var componentName = "Hero";
    public var name(default, never) = componentName;

    public function new()
    {
    }
}
