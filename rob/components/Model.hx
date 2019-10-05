package rob.components;
import h3d.scene.Scene;
import h3d.scene.Mesh;
import ecs.Component;

class Model implements Component
{
    public static inline var componentName = "Model";
    public var name(default, never) = componentName;

    public var mesh:Mesh;

    public function new(s3d:Scene)
    {
        var cube = new h3d.prim.Cube();
        mesh = new Mesh(cube, s3d);
    }
}
