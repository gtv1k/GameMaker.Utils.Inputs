input_tick();
input_source_hotswap_tick();

if (input_keyboard_check_pressed(vk_escape) || input_gamepad_check_pressed(gp_start)) rebinding = false;

if (rebinding)
{
    var _binding = input_binding_scan_tick(input_player_source_get());
    if (_binding != undefined)
    {
        input_binding_set_safe(rebinding_verb, _binding, 0, rebinding_alt);
        rebinding = false;
    }
}
else
{
    if (input_keyboard_check_pressed(ord("1")) || input_gamepad_check_pressed(input_player_gamepad_get(), gp_face1))
    {
        rebinding = true;
        rebinding_alt = 0;
    }

    if (input_keyboard_check_pressed(ord("2")) || input_gamepad_check_pressed(input_player_gamepad_get(), gp_face2))
    {
        rebinding = true;
        rebinding_alt = 1;
    }
}