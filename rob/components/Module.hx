package rob.components;

import h3d.scene.Scene;
import h3d.scene.Mesh;
import ecs.Component;
import ecs.Entity;

class Module implements Component
{
    public static inline var componentName = "Module";
    public var name(default, never) = componentName;

    private var type:ModuleType;

    public function new(type:ModuleType)
    {
    }
}
