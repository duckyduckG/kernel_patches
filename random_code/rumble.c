/*
 * Copyright (c) 2025 duckyduckG
 */

#include <linux/input.h>
#include <linux/uinput.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int main() {
    int fd = open("/dev/input/event22", O_RDWR);
    if (fd < 0) {
        perror("open");
        return 1;
    }

    struct ff_effect effect;
    memset(&effect, 0, sizeof(effect));
    effect.type = FF_RUMBLE;
    effect.id = -1;
    effect.u.rumble.strong_magnitude = 0xc000;
    effect.u.rumble.weak_magnitude = 0x6000;
    effect.replay.length = 2000;
    effect.replay.delay = 0;

    if (ioctl(fd, EVIOCSFF, &effect) == -1) {
        perror("upload effect");
        return 1;
    }

    struct input_event play;
    memset(&play, 0, sizeof(play));
    play.type = EV_FF;
    play.code = effect.id;
    play.value = 1;

    if (write(fd, &play, sizeof(play)) == -1) {
        perror("play effect");
        return 1;
    }

    sleep(2); // let it sing
    close(fd);
    return 0;
}
