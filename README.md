# Wheel Spin
Test playground for the godot game engine.

## Scenes
A list of scenes and what they test

- `stickman_CharacterBody2D_level` - testing CharacterBody2D movement
- `stickman_level` - testing RigidBody2D with rectangule CollisionShape2D
- `ui` - all ui related scenes
- `wheel_camera_follow_level` - testing `wheel_level` but with the camera following the wheel
- `wheel_level` - testing a RigidBody2D and physics interations like friction, bounce. Includes left, right, down, and jump controls.

## Notes
Random notes and things learned from doing this project

### Project Structure
- It is recommend to keep 3rd party resources here to keep track of which resources are 3rd party. [source](https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html#style-guide).
- Common assets can be in the top level `assets` directory, but generally speaking, assets (scriopts, materials, etc.) should go in the `assets` directory at the scene level.
- Assets if not reused should be made unique so that you don't have to manage a separate file for it. In this case you are letting the scene manage it. To do this, right click, or click the dropdown arrow on a (script, material, etc.) and click `Make Unique`. 
