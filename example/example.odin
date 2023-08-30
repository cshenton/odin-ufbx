package ufbx_example

import "core:fmt"
import fbx "../ufbx"

main :: proc() {
        opts := fbx.Load_Opts{}
        err := fbx.Error{}
        scene := fbx.load_file("example/suzanne.fbx", &opts, &err)
        if scene == nil {
                fmt.printf("Failed to load %s\n", err.description.data)
                return
        }

        // Print all the Nodes in the Scene
        for i in 0 ..< scene.nodes.count {
                node := scene.nodes.data[i]
                if node.is_root { continue }

                fmt.printf("Node %s\n", node.element.name.data)
                if node.mesh != nil {
                        count := node.mesh.faces.count
                        fmt.printf("-> mesh with %zu faces\n", count)
                }
        }

        fbx.free_scene(scene)
}
