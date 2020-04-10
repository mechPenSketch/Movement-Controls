# Movement Controls

## Getting Started

### Requirement
* Godot Engine v3.x
* A game controller with joystick/analog control

### Installation
After downloading, open Godot Engine Project Manager. Click Import, go to the folder you've downloaded, and select "project.godot".

## Usage
The first scene shows a big, red circle with four panels behind it. The red circles moves around, reaching the corners of the panels. At the scene panel, the "core" node's script has variable "controller" with resource "analog.tres" attached. With this, you can use the controller's joystick to move the red circle.

### Attaching another controller
On the FileSystem panel, drag and drop resource "controller/resources/dpad.tres" into the "controller" variable. You can now use the arrow keys to move the red circle!

### Applicability
When you create a playable character that moves around, you can create an exported variable like this:
```gdscript
export (Resource) var controller
```
This way, you can drag an drop the appropriate resource file into the variable.

To make use of the resource file, call the following function:
```gdscript
func _input(event):	
	var dir: Vector2 = controller.directional_event(event)
	pass
```
In the input function, call controller.directional_event(event) and expect a Vector2 of base direction to be returned.
## Future Update

### Major Updates
* Account for more than one player

### Minor Updates
* Implement buttons for various actions (such as for jumping)

### Bugs to fix
* Resources cannot change their exported variables

## Author
* mechPenSketch

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
