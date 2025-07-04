/*
 * Copyright (c) 2025 duckyduckG
 */

#include <linux/input.h>
#include <linux/uinput.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void play_rumble(int fd, uint16_t strong, uint16_t weak, int duration_ms) {
    struct ff_effect effect;
    memset(&effect, 0, sizeof(effect));
    effect.type = FF_RUMBLE;
    effect.id = -1;
    effect.u.rumble.strong_magnitude = strong;
    effect.u.rumble.weak_magnitude = weak;
    effect.replay.length = duration_ms;
    effect.replay.delay = 0;

    if (ioctl(fd, EVIOCSFF, &effect) == -1) {
        perror("upload effect");
        return;
    }

    struct input_event play;
    memset(&play, 0, sizeof(play));
    play.type = EV_FF;
    play.code = effect.id;
    play.value = 1;

    if (write(fd, &play, sizeof(play)) == -1) {
        perror("play effect");
        return;
    }

    usleep(duration_ms * 1000);
}

int main() {
    char device[256];
    const char *default_device = "/dev/input/event22";

    printf("Enter event device path (default %s): ", default_device);
    if (fgets(device, sizeof(device), stdin) == NULL) {
        strcpy(device, default_device);
    } else {
        size_t len = strlen(device);
        if (len > 0 && device[len - 1] == '\n') {
            device[len - 1] = '\0';
        }
        if (strlen(device) == 0) {
            strcpy(device, default_device);
        }
    }

    int fd = open(device, O_RDWR);
    if (fd < 0) {
        perror("open");
        return 1;
    }

    printf("Select rumble type:\n");
    printf("1. Weak motor only\n");
    printf("2. Strong motor only\n");
    printf("3. Both (Rumble)\n");
    printf("4. Test both with pulse (5x pulses)\n");
    printf("Enter choice: ");

    int choice;
    scanf("%d", &choice);

    switch (choice) {
        case 1:
            printf("Playing weak motor...\n");
            play_rumble(fd, 0x0000, 0x7FFF, 1000);
            break;
        case 2:
            printf("Playing strong motor...\n");
            play_rumble(fd, 0x7FFF, 0x0000, 1000);
            break;
        case 3:
            printf("Playing both motors...\n");
            play_rumble(fd, 0x6000, 0x6000, 1500);
            break;
        case 4:
            printf("Playing pulse test (5x short rumbles)...\n");
            for (int i = 0; i < 5; i++) {
                play_rumble(fd, 0x4000, 0x2000, 200);
                usleep(200 * 1000);
            }
            break;
        default:
            printf("Invalid choice.\n");
            break;
    }

    close(fd); // let it sing
    return 0;
}
