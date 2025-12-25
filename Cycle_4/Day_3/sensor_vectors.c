#include <stdio.h>

void main() {

float sensor[3] = {ax, ay, az};
float scale[3] = {0.98,1.02,1.00}

    for(int i=0; i<3; i++) {
        sensor[i] = scale[i] * sensor[i];
    }

printf(sensor[i]);
}
