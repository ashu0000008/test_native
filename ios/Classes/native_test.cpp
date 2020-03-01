//
// Created by 周阳 on 2020-03-01.
//

#include <stdint.h>

int32_t counter = 0;

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_get_counter() {
    counter = counter + 2;
    return counter;
}