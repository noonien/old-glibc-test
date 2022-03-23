#PREFIX=armv7l-unknown-linux-gnueabihf-
echo '#include <errno.h>' | ${PREFIX}gcc -xc - -E -dM |  grep -E '^#define __GLIBC(|_MINOR)__ '
