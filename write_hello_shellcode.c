#include<unitypes.h>

/*
 * write(stdout, "Hello, world\n", sizeof(hello_world))
 *
 * exit()
 *
 */

/*
 * This shellcode is something wrong,
 * the "hello_world" string is missing,
 * we should use another method to use it.
 */

#define _BUFFER_SIZE 62
const uint8_t buffer[_BUFFER_SIZE] = {
      0xeb, 0x28, 0x48, 0x31, 0xc0, 0x48, 0x31, 0xc9, 0x48, 0x31,
        0xff, 0x48, 0x31, 0xf6, 0x48, 0x31, 0xd2, 0xb0, 0x01, 0xb1,
          0x01, 0x66, 0x89, 0xcf, 0x59, 0x48, 0x89, 0xce, 0xb2, 0x10,
            0x0f, 0x05, 0x48, 0x31, 0xc0, 0x48, 0x31, 0xff, 0xb0, 0x3c,
              0x0f, 0x05, 0xe8, 0xd3, 0xff, 0xff, 0xff, 0x48, 0x65, 0x6c,
                0x6c, 0x6f, 0x2c, 0x20, 0x77, 0x6f, 0x72, 0x6c, 0x64, 0x2e,
                  0x0a, 0x00
                      
};

int
main(void) {
    int (*ret)() = (int(*)())buffer;

    ret();
}
