var _string = "";

_string += string(input_binding_get("left",  INPUT_SOURCE.KEYBOARD_AND_MOUSE, "default")) + "\n";
_string += string(input_binding_get("right", INPUT_SOURCE.KEYBOARD_AND_MOUSE, "default")) + "\n";
_string += string(input_binding_get("up",    INPUT_SOURCE.KEYBOARD_AND_MOUSE, "default")) + "\n";
_string += string(input_binding_get("down",  INPUT_SOURCE.KEYBOARD_AND_MOUSE, "default")) + "\n";

draw_text(10, 10, _string);