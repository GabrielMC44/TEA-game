if (keyboard_check_pressed(ord("P"))) {
    // Inverte o estado da pausa apenas UMA VEZ quando a tecla é pressionada
    global.pause = !global.pause;
}